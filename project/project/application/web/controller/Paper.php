<?php
namespace app\web\controller;

use think\Db;

use app\web\model\Paper as PaperModel;
class Paper extends Base
{


    /**
     * 论文列表
     */
    public function index()
    {
        $this->assign('title','论文列表');
        $this->assign('keywords','');
        $this->assign('desc','');

        $list = PaperModel::paginate(15); //每页显示15条
        $this -> view -> assign('list', $list);

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->view->fetch('paper_list');

    }


    /**
     * 发布论文界面
     */
    public function add()
    {
        $this->assign('title','论文发表');
        $this->assign('keywords','');
        $this->assign('desc','');

        $professor = Db::table('professor')->order('id desc')->limit(5)->select();
        $this->assign("professor",$professor);

        $result = Db::table('result')->order('id desc')->limit(5)->select();
        $this->assign('result',$result);

        $need = Db::table('need')->order('id desc')->limit(5)->select();
        $this->assign('need',$need);

        return $this->fetch('add');
    }

    /**
     * 发布论文操作
     */
    public function sure()
    {

        $user_id = input('session.userId');
        $user_name = input('session.userName');
        $name = input('post.name');
        $content = input('post.content');
        $realname = input('session.realname');
        $paper_time = input('post.paper_time');
        $time = date('Y-m-d ',time());

        $data = ['user_id'=>$user_id,
            'user_name'=>$user_name,
            'name'=>$name,
            'realname'=>$realname,
            'paper_time'=>$paper_time,
            'time'=>$time,
            'content'=>$content];

        $result = Db::table('paper')->insert($data);
        if($result){
            $this->success('发表成功');
        }else{
            $this->error('发表失败，请检查');
        }
    }

}
