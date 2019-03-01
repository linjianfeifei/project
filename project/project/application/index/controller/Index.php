<?php
namespace app\index\controller;
use app\index\controller\Base;
use think\Db;
class Index extends Base
{


    public function index()
    {
        $this ->isLogin();
        return $this-> view->fetch();
    }

//    public function data(){
//        $DB=new Db;
//        $data=$DB::table("user")->select();
//        dump($data);
//    }
}
