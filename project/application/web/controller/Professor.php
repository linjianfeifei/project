<?php
namespace app\web\controller;
use app\web\controller\Base;
use think\Request;
use think\Session;
use think\Response;
use think\Db;
use app\web\model\Professor as ProfessorModel;

class Professor extends Base
{
    public function index(){
        $this->view->assign('title','服务资源列表');
        $this->view->assign('keywords','服务资源列表');
        $this->view->assign('desc','服务资源列表');

        $data=Db::query('select * from professor');
        $this->assign('data',$data);

        $list=ProfessorModel::paginate(6);
        $this->assign('list',$list);

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->view->fetch('professor_list');
    }
    /**
     *教授用户注册界面
     */
    public function  adminAdd()
    {
        $this->view->assign('title','教授用户注册');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');
        return $this->view->fetch('professor_add');
    }

    public function checkUserName(Request $request)
    {
        $userName = trim($request->param('name'));
        $status = 1;
        $message = '用户名可用';
        if (ProfessorModel::get(['name' => $userName])) {
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
        if (ProfessorModel::get(['email' => $userEmail])) {
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

        $code=Db::execute("insert into professor value(null,:name,:tel,:password,:realname,:email,1,:honor,:industry,:school,:content,null,null,:education,null)",$data);

        if($code){
            //跳转
            $this->success("添加成功",'/web');
        }else{
            $this->error("添加失败");
        }

    }

    //教授详情信息
    public function message()
    {
        $this->view->assign('title','教授详情');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');

        //接受get提交的id，通过id查询
        $id = input('get.id');

        $list = Db::table('professor')->where('id',$id)->select();
        $this->assign('list',$list);

        //搜索对应留言
        $message = Db::table('professor_message')->where('professor_id',$id)->select();
        $this->assign('message',$message);

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->view->fetch('message');
    }

    //个人信息
    public function change()
    {
        $this->view->assign('title','修改个人信息');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');

        $id = input('session.userId');
        $list = Db::table('professor')->where('id',$id)->select();
        $this->assign('list',$list);

        $vip = input('session.vip');
        if($vip == 1){
            $vip = Db::table('professor_vip')->where('professor_id',$id)->select();
            $this->assign('vip',$vip);
        }

        return $this->fetch();

    }


    //更新数据操作
    public function editUser()
    {
        $id = input('session.userId');
        $password = input('post.password');
        $realname = input('post.realname');
        $tel = input('post.tel');
        $honor = input('post.honor');
        $industry = input('post.industry');
        $school = input('post.school');
        $content = input('post.content');
        $education = input('post.education');

        $result = Db::table('professor')->where('id',$id)->update(['password'=>$password,
            'realname'=>$realname,
            'tel'=>$tel,
            'honor'=>$honor,
            'industry'=>$industry,
            'school'=>$school,
            'content'=>$content,
            'education'=>$education,
        ]);

        if($result){
            $this->success('修改成功');
        } else {
            $this->error('修改失败');
        }

    }

}