<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    
    	 $id=session("res")[0]['id'];
    	if($id){
    		 $res= M()->table(array('think_user'=>'u1','think_auth_group_access'=>'g2'))->field('u1.*,g2.*')->where('g2.uid=u1.id')->select();
    		 $arr=M("auth_group_access")->where("uid=".$id)->find();
    		 $arr2=M("auth_group")->where("id=".$arr['uid'])->find();
    		 // dump($arr2);
    		 $resStr=explode(",", $arr2['rules']);
    		 $map['id']=array("in",$resStr);
    		 $map['menu']=array("eq","0");
    		 $res2=M("auth_rule")->where($map)->select();
    		 echo "当前路径/".MODULE_NAME."/".CONTROLLER_NAME."/".ACTION_NAME;
    		 echo "<br/>";

    		 dump($res2);
    		 	$this->assign("res",$res2);
    		 	$this->display("");

   	 } else{
    	$this->redirect("login/index");
     }
    }
}