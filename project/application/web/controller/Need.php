<?php
namespace app\web\controller;
use app\web\controller\Base;
use think\Db;
use think\Request;
use app\web\model\Need as NeedModel;

class Need extends Base
{
    public function index(){
        $this->view->assign('title','科技需求库');
        $this->view->assign('keywords','科技需求库');
        $this->view->assign('desc','科技需求库');



        $data=Db::query("select * from need");
        $this->assign('data',$data);

        $list = Db::table('need')->order('id desc')->paginate(6);
//        $list=NeedModel::paginate(6);//每页显示6条数据
        $this->assign('list',$list);

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->view->fetch('need_list');
    }
    /**
     *需求发布界面
     */
    public function  adminAdd()
    {
        $this ->isLogin();//判断是否登录，登录之后才能发表
        $this->view->assign('title','需求发布');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');
        return $this->view->fetch('need_add');
    }

    //检测用户名是否可用
    public function checkUserName(Request $request)
    {
        $userName = trim($request->param('name'));
        $status = 1;
        $message = '用户名可用';
        if (UserModel::get(['name' => $userName])) {
            //如果在表中查询到该用户名
            $status = 0;
            $message = '用户名重复,请重新输入~~';
        }
        return ['status' => $status, 'message' => $message];
    }


    //检测用户邮箱是否可用
    public function checkUserEmail(Request $request)
    {
        $userEmail = trim($request->param('email'));
        $status = 1;
        $message = '邮箱可用';
        if (UserModel::get(['email' => $userEmail])) {
            //查询表中找到了该邮箱,修改返回值
            $status = 0;
            $message = '邮箱重复,请重新输入~~';
        }
        return ['status' => $status, 'message' => $message];
    }

    //添加操作
    public function save(Request $request)
    {

        $data=input('post.');

        $code=Db::execute("insert into need value(null,:user_name,:name,:content,:tel,:price,:level,null,null,null,null)",$data);

        if($code){
            //跳转
            $this->success("添加成功",'/web');
        }else{
            $this->error("添加失败");
        }
    }

    //科技需求详情信息
    public function message()
    {
        $this->view->assign('title','科技需求详情');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');

        //接受get提交的id，通过id查询
        $id = input('get.id');

        $list = Db::table('need')->where('id',$id)->select();
        $this->assign('list',$list);

        //搜索对应留言
        $message = Db::table('need_message')->where('need_id',$id)->select();
        $this->assign('message',$message);

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->view->fetch('message');
    }
}