<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
<h3>后台</h3>
		
			<?php if(is_array($res)): $i = 0; $__LIST__ = $res;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$res): $mod = ($i % 2 );++$i;?><li><a href="/index.php/<?php echo ($res["name"]); ?>"><?php echo ($res["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

			<li><a href="/index.php/Home/Login/des">退出</a></li>
</body>
</html>