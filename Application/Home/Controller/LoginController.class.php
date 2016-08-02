<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
    	$this->display();
    }
    public function des(){
		session("res",null)	;
    	dump(session("res"));
    	$this->redirect("Login/index");
    }

    public function loginForm(){
    	$user=I("user");
    	$pass=I("pass");
    	$res1=M("user")->where("name='{$user}' and pass='{$pass}'")->select();
    	session("res",$res1);
    	$this->redirect("Index/index");
    }
}