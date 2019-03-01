<?php
namespace app\web\controller;
use think\Db;
use app\web\controller\Base;
use think\Request;
use think\Session;
use think\Response;
use app\web\model\Result as ResultModel;

class Result extends Base
{
  public function index(){
      $this->view->assign('title','科技成果库');
      $this->view->assign('keywords','科技成果库');
      $this->view->assign('desc','科技成果库');

      $list = Db::table('result')->order('id desc')->paginate(6);
      $this->view->assign('list',$list);

      $professor = Db::table('professor')->order('id desc')->limit(5)->select();
      $this->assign("professor",$professor);

      $result = Db::table('result')->order('id desc')->limit(5)->select();
      $this->assign('result',$result);

      $need = Db::table('need')->order('id desc')->limit(5)->select();
      $this->assign('need',$need);

      return $this->view->fetch('result_list');
  }

    /**
     *科技成果发表界面
     */
    public function  adminAdd()
    {
        $this ->isLogin();//判断是否登录，登录之后才能发表
        $this->view->assign('title','科技成果发表');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');
        return $this->view->fetch('result_add');
    }
    //添加操作
    public function save(Request $request)
    {

        $data=input('post.');

        $code=Db::execute("insert into result value(null,:name,:content,:user_name,:tel,:level,:price,null,null,null,null)",$data);

        if($code){
            //跳转
            $this->success("添加成功",'/web');
        }else{
            $this->error("添加失败");
        }

    }


    //搜索功能
    public function search(){
        $this->view->assign('title','查询结果');
        $this->view->assign('keywords','查询结果');
        $this->view->assign('desc','查询结构');

        $keywords=input('search');
        if($keywords){

            $list = ResultModel::where('name','like','%'.$keywords.'%')->whereOr('level','like','%'.$keywords.'%')->paginate(3);
            $page = $list->render();

            $this->assign('list', $list);
            $this->assign('page', $page);

        }else{
            $this->assign('list',null);
            $this->assign('page', null);


        }

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->view->fetch('search_list');
    }

    //科技成果详情信息
    public function message()
    {
        $this->view->assign('title','科技需求详情');
        $this->view->assign('keywords','');
        $this->view->assign('desc','');

        //接受get提交的id，通过id查询
        $id = input('get.id');

        $list = Db::table('result')->where('id',$id)->select();
        $this->assign('list',$list);

        //搜索对应留言
        $message = Db::table('result_message')->where('result_id',$id)->select();
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