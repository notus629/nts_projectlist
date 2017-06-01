<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){
        //echo "__URL__"; exit;
        $m = M('projects');
        $projs = $m->order('create_at')->select();
        $this->assign('projects', $projs);
        $this->display();
    }

    public function add(){
        $this->display();
    }

    public function addop(){
        $m = M('projects');
        $data['name'] = $_POST['name'];
        $data['description'] = $_POST['description'];
        if( ( $id = $m->add($data) ) > 0){
            $this->success("添加项目成功!", "__APP__");
        } else {
            $this->error("添加项目失败!", "__APP__");
        };
    }

    public function mod(){
        $id = $_GET['id'];
        $m = M('projects');
        $data = $m->find($id);
        $this->assign('item', $data);
        $this->display();
    }

    public function modop(){
        $m = M('projects');
        $data['id'] = $_POST['id'];
        $data['name'] = $_POST['name'];
        $data['description'] = $_POST['description'];
        if( $m->save($data) > 0){
            $this->success("项目信息更新成功", "__APP__");
        } else {
            $this->error("项目信息更新失败", "__APP__");
        }
    }

    public function del(){
        $m = M('projects');
        if( $m->delete($_GET['id']) ){
            $this->success('删除成功!');
        }
    }
}