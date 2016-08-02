<?php
namespace Home\Controller;
use Think\Controller;
use Think\Auth;
class AboutController extends CommonController {


    public function index(){

    	$id=(session("res")[0]['id']);
    	dump($id);
    	  $auth=new Auth();  
    	  $res=$auth->check(MODULE_NAME."/".CONTROLLER_NAME."/".ACTION_NAME,$id);
    	  if($res){
    	  	echo "有权限";
    	  }else{
    	  	
    	  	echo "没有权限";
    	  }
    }
}