<?php
namespace app\web\controller;

use think\Db;

class ProfessorMessage extends Base
{

    //提交留言
    public function index()
    {
        $this ->isLogin();
        $user_id = input('session.userId');
        $user_name = input('session.userName');
        $professor_id = input('get.id');
        $professor_name = input('get.name');
        $content = input('get.message');
        $createtime = date('Y-m-d ',time());
        $data = ['user_id' => $user_id ,
            'user_name' => $user_name ,
            'professor_id' => $professor_id ,
            'professor_name' => $professor_name,
            'content' => $content,
            'createtime' => $createtime];
        $result = Db::table('professor_message')->insert($data);

        if($result){
            $this->success('评论成功');
        } else {
            $this->error('评论失败');
        }

    }



}