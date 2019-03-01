<?php
namespace app\index\controller;

use think\Request;
use app\index\model\ProfessorVip as ProfessorVipModel;

class ProfessorVip extends Base
{

    //渲染vip列表
    public function index()
    {

        $this->view->assign('title', '教授用户Vip列表');
        $this->view->assign('keywords', '');
        $this->view->assign('desc', '');

        $this->view->count = ProfessorVipModel::count();

        $list = ProfessorVipModel::paginate(6); //每页显示6条
        $this -> view -> assign('list', $list);
        //渲染管理员列表模板
        return $this->view->fetch('admin_list');
    }


    //删除操作
    public function deleteUser(Request $request)
    {
        $Professor_id = $request->param('id');
        ProfessorVipModel::update(['is_delete' => 1], ['id' => $Professor_id]);
        ProfessorVipModel::destroy($Professor_id);

    }

    //恢复删除操作
    public function unDelete()
    {
        ProfessorVipModel::update(['delete_time' => NULL], ['is_delete' => 1]);
    }




}