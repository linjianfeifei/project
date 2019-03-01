<?php
namespace app\web\controller;
use think\Controller;
use think\Db;
use think\Request;
use app\web\model\Result as ResultModel;

class Search extends Controller
{
   public function index(){
       $this->view->assign('title','查询结果');
       $this->view->assign('keywords','查询结果');
       $this->view->assign('desc','查询结构');

       $keywords=input('search');


           if($keywords){
               $map['level']=['like','%'.$keywords.'%'];
               $name['name']=['like','%'.$keywords.'%'];

               $search_result=db('result')->where($map)->whereOr($name)->select();
               $this->assign('search_result',$search_result);

               $search_need=db('need')->where($map)->whereOr($name)->select();
               $this->assign('search_need',$search_need);


           }else{
               $this->assign('search_result',null);
               $this->assign('search_need',null);

           }


       $professor = Db::table('professor')->order('id desc')->limit(5)->select();
       $this->assign("professor",$professor);

       $result = Db::table('result')->order('id desc')->limit(5)->select();
       $this->assign('result',$result);

       $need = Db::table('need')->order('id desc')->limit(5)->select();
       $this->assign('need',$need);

       return $this->view->fetch('search_list');
   }
}