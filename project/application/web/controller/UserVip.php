<?php
namespace app\web\controller;

use think\Db;
use think\session;

class UserVip extends Base
{
    /**
     * 充值操作
     */
    public function index()
    {
      $user_id = input('session.userId');
      $user_name = input('session.userName');
      $vip = 1;
      $start_time = date('Y-m-d ',time());
      $time = input('post.time');
      $end_time = date('Y-m-d',time()+$time*30*24*3600);

      $data = ['user_id'=>$user_id,
               'user_name'=>$user_name,
               'vip'=>$vip,
               'start_time'=>$start_time,
               'time'=>$time,
               'end_time'=>$end_time];

      $result = Db::table('user_vip')->insert($data);
      if($result){
          Session::set('vip',$vip); //放进session方便权限分配
          $this->success('充值成功');
      }else{
          $this->error('充值失败，请重试');
      }
    }


    /**
     * 续费操作
     */
    public function money()
    {
        $user_id = input('session.userId');
        $end_time_old = input('post.end_time');
        $old_time = input('post.old_time');
        $time = input('post.time')+$old_time;
        $end_time = date('Y-m-d',time($end_time_old)+$time*30*24*3600);


        $result = Db::table('user_vip')->where('user_id',$user_id)->update(['time'=>$time,'end_time'=>$end_time]);
        if($result){
            $this->success('续费成功');
        }else{
            $this->error{'续费失败，请重试'};
        }

    }




    /**
     * vip权利界面
     */
    public function power()
    {
        $this->assign('title','vip权限详情');
        $this->assign('keyword','');
        $this->assign('desc','');

        $user_id = input('session.userId');
        $list = Db::table('user_vip')->where('user_id',$user_id)->select();
        $this->assign('list',$list);

        return $this->fetch('power');
    }


}