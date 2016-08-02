<?php
namespace Home\Controller;
use Think\Controller;
use Think\Auth;
class CommonController extends Controller {
	
    public function __construct(){
    	parent::__construct();
    }

    public function ver($par,$id){
    	 $auth=new Auth();  
    	 $res=$auth->check($par,$id);
    	 if(!$res){
    	 	echo "没有权限";
    	 	exit;
    	 }else{

    	 }
    }
}