<?php
/**
 * Created by PhpStorm.
 * User: Gene
 * Date: 2017/6/1
 * Time: 17:15
 */
// 后台管理
class ManAction extends Action {

    public function index(){
        $sessionkey = session_id().md5(md5('notus8549'));
        if ( !session($sessionkey) ){
            $this->display();
        } else {
            $m = M('projects');
            $projs = $m->order('create_at')->select();
            $index = A('Index');
            $index->assign('projects', $projs);
            $index->assign('admin', true);
            $index->display("Index:index");
        }
    }

    public function login(){
        $m = M('user');
        $name = $_POST['name'];
        $pwd = $_POST['pwd'];
        $dbpwd = $m->where("name='".$name."'")->getField('password');

        if( !$dbpwd ){
            $this->error('登录失败');
        }

        if(md5($pwd) === $dbpwd){
            $sessionkey = session_id().md5(md5('notus8549'));
            session(array($sessionkey=>$name,'expire'=>3600));
            session($sessionkey, $name);
            $this->success('登录成功', '__URL__/../Index/index');
        } else {
            $this->error('登录失败');
        }
    }

    public function logout(){
        $sessionkey = session_id().md5(md5('notus8549'));
        session($sessionkey, null);
        $this->display('index');
    }

}