<?php
namespace app\index\controller;

use think\Request;
use app\index\model\NeedMessage as NeedMesaageModel;

class NeedMessage extends Base
{

    //渲染留言板
    public function index()
    {

        $this->view->assign('title', '科技需求留言列表');
        $this->view->assign('keywords', '');
        $this->view->assign('desc', '');

        $this->view->count = NeedMesaageModel::count();

        $list = NeedMesaageModel::paginate(6); //每页显示6条
        $this -> view -> assign('list', $list);
        //渲染管理员列表模板
        return $this->view->fetch('admin_list');
    }


    //删除操作
    public function deleteUser(Request $request)
    {
        $user_id = $request->param('id');
        NeedMesaageModel::update(['is_delete' => 1], ['id' => $user_id]);
        NeedMesaageModel::destroy($user_id);

    }

    //恢复删除操作
    public function unDelete()
    {
        NeedMesaageModel::update(['delete_time' => NULL], ['is_delete' => 1]);
    }




}