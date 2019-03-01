<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
//资源路由
use think\Route;
Route::resource('user','index/user');
Route::resource('professor','index/professor');
Route::resource('result','index/result');
Route::resource('need','index/need');
Route::resource('paper','index/paper');
Route::resource('need_message','index/need_message');
Route::resource('result_message','index/result_message');
Route::resource('professor_message','index/professor_message');


Route::resource('web','web/index');
Route::resource('result_list','web/result');
Route::resource('need_list','web/need');
Route::resource('professor_list','web/professor');
Route::resource('paper_list','web/paper');
Route::resource('webUser','web/user');
Route::resource('webProfessor','web/professor');
Route::resource('webResult','web/result');
Route::resource('webNeed','web/need');




//return [
//    '__pattern__' => [
//        'name' => '\w+',
//    ],
//    '[hello]'     => [
//        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
//        ':name' => ['index/hello', ['method' => 'post']],
//    ],
//
//];
