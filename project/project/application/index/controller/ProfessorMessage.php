<?php
namespace app\index\controller;

use think\Request;
use app\index\model\ProfessorMessage as ProfessorMesaageModel;

class ProfessorMessage extends Base
{

    //渲染留言板
    public function index()
    {

        $this->view->assign('title', '教授留言列表');
        $this->view->assign('keywords', '');
        $this->view->assign('desc', '');

        $this->view->count = ProfessorMesaageModel::count();

        $list = ProfessorMesaageModel::paginate(6); //每页显示6条
        $this -> view -> assign('list', $list);

        return $this->view->fetch('admin_list');
    }


    //删除操作
    public function deleteUser(Request $request)
    {
        $user_id = $request->param('id');
        ProfessorMesaageModel::update(['is_delete' => 1], ['id' => $user_id]);
        ProfessorMesaageModel::destroy($user_id);

    }

    //恢复删除操作
    public function unDelete()
    {
        ProfessorMesaageModel::update(['delete_time' => NULL], ['is_delete' => 1]);
    }




}