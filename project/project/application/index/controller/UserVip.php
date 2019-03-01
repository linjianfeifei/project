<?php
namespace app\index\controller;

use think\Request;
use app\index\model\UserVip as UserVipModel;

class UserVip extends Base
{

    //渲染vip列表
    public function index()
    {

        $this->view->assign('title', '普通用户Vip列表');
        $this->view->assign('keywords', '');
        $this->view->assign('desc', '');

        $this->view->count = UserVipModel::count();

        $list = UserVipModel::paginate(6); //每页显示6条
        $this -> view -> assign('list', $list);
        //渲染管理员列表模板
        return $this->view->fetch('admin_list');
    }


    //删除操作
    public function deleteUser(Request $request)
    {
        $user_id = $request->param('id');
        UserVipModel::update(['is_delete' => 1], ['id' => $user_id]);
        UserVipModel::destroy($user_id);

    }

    //恢复删除操作
    public function unDelete()
    {
        UserVipModel::update(['delete_time' => NULL], ['is_delete' => 1]);
    }




}