<?php
namespace app\index\controller;

use think\Request;
use app\index\model\Paper as PaperModel;

class Paper extends Base
{

    //渲染论文列表
    public function index()
    {

        $this->view->assign('title', '论文');
        $this->view->assign('keywords', '');
        $this->view->assign('desc', '');

        $this->view->count = PaperModel::count();

        $list = PaperModel::paginate(6); //每页显示6条
        $this -> view -> assign('list', $list);

        return $this->view->fetch('admin_list');
    }


    //删除操作
    public function deleteUser(Request $request)
    {
        $user_id = $request->param('id');
        PaperModel::update(['is_delete' => 1], ['id' => $user_id]);
        PaperModel::destroy($user_id);

    }

    //恢复删除操作
    public function unDelete()
    {
        PaperModel::update(['delete_time' => NULL], ['is_delete' => 1]);
    }




}