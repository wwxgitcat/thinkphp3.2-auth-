<?php
namespace Home\Controller;
use Think\Controller;
use Think\Auth;
class ProductController extends CommonController {
    public function index(){
    	 $id=session("res")[0]['id'];
    	 echo MODULE_NAME."/".CONTROLLER_NAME."/".ACTION_NAME;
    	A("Common")->ver(MODULE_NAME."/".CONTROLLER_NAME."/".ACTION_NAME,$id);
    	$this->display("");
    }
    public function edit(){
    	echo "编辑";
    }
    public function del(){
    	 $id=session("res")[0]['id'];
    	A("Common")->ver(MODULE_NAME."/".CONTROLLER_NAME."/".ACTION_NAME,$id);
    	// $auth=new Auth();  
    	//  $id=session("res")['id'];
    	//  $res=$auth->check(MODULE_NAME."/".CONTROLLER_NAME."/".ACTION_NAME,$id);
    	//  if(!$res){
    	//  	echo "没有权限";
    	//  }
    		echo "删除";
    }
}