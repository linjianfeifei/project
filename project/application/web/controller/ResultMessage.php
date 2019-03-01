<?php
namespace app\web\controller;

use think\Db;

class ResultMessage extends Base
{

    //提交留言
    public function index()
    {
        $this ->isLogin();
        $user_id = input('session.userId');
        $user_name = input('session.userName');
        $result_id = input('get.id');
        $result_name = input('get.name');
        $content = input('get.message');
        $createtime = date('Y-m-d ',time());
        $data = ['user_id' => $user_id ,
            'user_name' => $user_name ,
            'result_id' => $result_id ,
            'result_name' => $result_name,
            'content' => $content,
            'createtime' => $createtime];
        $result = Db::table('result_message')->insert($data);

        if($result){
            $this->success('评论成功');
        } else {
            $this->error('评论失败');
        }

    }



}