<?php
namespace app\index\controller;

use think\Request;
use app\index\model\ResultMessage as ResultMesaageModel;

class ResultMessage extends Base
{

    //渲染留言板
    public function index()
    {

        $this->view->assign('title', '科技成果留言列表');
        $this->view->assign('keywords', '');
        $this->view->assign('desc', '');

        $this->view->count = ResultMesaageModel::count();

        $list = ResultMesaageModel::paginate(6); //每页显示6条
        $this -> view -> assign('list', $list);
        //渲染管理员列表模板
        return $this->view->fetch('admin_list');
    }


    //删除操作
    public function deleteUser(Request $request)
    {
        $user_id = $request->param('id');
        ResultMesaageModel::update(['is_delete' => 1], ['id' => $user_id]);
        ResultMesaageModel::destroy($user_id);

    }

    //恢复删除操作
    public function unDelete()
    {
        ResultMesaageModel::update(['delete_time' => NULL], ['is_delete' => 1]);
    }




}