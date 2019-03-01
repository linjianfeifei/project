<?php
namespace app\web\controller;

use think\Db;

class NeedMessage extends Base
{

    //提交留言
    public function index()
    {
        $this ->isLogin();


       $user_id = input('session.userId');
       $user_name = input('session.userName');
       $need_id = input('get.id');
       $need_name = input('get.name');
       $content = input('get.message');
       $createtime = date('Y-m-d ',time());

       if($content) {
           $data = ['user_id' => $user_id,
               'user_name' => $user_name,
               'need_id' => $need_id,
               'need_name' => $need_name,
               'content' => $content,
               'createtime' => $createtime];
           $result = Db::table('need_message')->insert($data);

           if ($result) {
               $this->success('评论成功');
           } else {
               $this->error('评论失败');
           }
       }else{
           $this->error('请填写评论内容');
       }

    }







}