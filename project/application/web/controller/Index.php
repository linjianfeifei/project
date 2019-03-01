<?php
namespace app\web\controller;
use think\captcha\Captcha;
use think\Controller;
use think\Request;
use think\Session;
use think\Response;
use think\Db;

class Index extends Controller
{
    /**
     * 渲染首页
     */
    public function index()
    {
        $role = input('session.role');
        $name = input('session.userName');

        if($role == 0){
            $checkVip = Db::table('user_vip')->where('user_name',$name)->find();
            if($checkVip){
                Session::set('vip',1);
            }else {
                Session::set('vip', 0);
            }
        }elseif($role ==1){
            $checkVip = Db::table('professor_vip')->where('professor_name',$name)->find();
            if($checkVip){
                Session::set('vip',1);
            }else{
                Session::set('vip',0);
            }
        }

        return $this->view->fetch();
    }


    /**
     * 手动实例化验证码
     */
    public function captcha_img()
    {
        $captcha = new Captcha();
        return $captcha->entry();
    }

    /**
     * 渲染登录界面
     */
    public function login()
    {
    return $this->view->fetch();
    }


    /**
     * 登录验证
     */
    public function checkLogin(Request $request){
        $data=$request->param();//获取参数

        if(empty($data[name])) {
            $this->error('账号不能为空！请输入账号');
        }

        if(empty($data[password])) {
            $this->error('密码不能为空！请输入密码~');
        }

        //获取验证码
        $captcha= new Captcha();
        if($captcha->check($data['verify'])){
            $this->error('验证码不正确！请重新输入~');
        }

        //账号密码验证
        $model = new \app\web\model\User();
        $result=$model->where([ 'name'=>$data['nam'] , 'password'=>$data['password'] ])->find();

        if(!$result){
            $this->error('账号或密码错误！请重新输入~');
        }

        //删除密码
        unset($result['password']);

        //写入Session
        Session::set('userId', $result['id']);
        Session::set('userName', $result['name']);
        Session::set('user_info', $model->getData());

        return Response::create(['code' => 1, 'msg' => '登录成功，点击【确定】进入~', 'data' => $result], 'JSON');
    }

    /**
     * 登出操作
     */
    public function logout()
    {
        Session::delete('userId');
        Session::delete('userName');
        Session::delete('user_info');
//        $this ->success('注销登陆，正在返回','user/login');
        return Response::create(['code' => 1, 'info' => '退出成功！'], 'json');
    }
}