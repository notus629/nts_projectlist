<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员登录</title>
    <link  rel="stylesheet" href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script type="text/javascript" src="//cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <style>
        h2 {
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h2 class="text-info">用户登录</h2>
    <div class="container">
        <form action="__URL__/login" method="post">
            <div class="form-group">
                <label for="name">用户名</label>
                <input type="text" class="form-control" id="name" placeholder="用户名" required autofocus tabindex="1" name="name">
            </div>
            <div class="form-group">
                <label for="pwd">密码</label>
                <input type="password" class="form-control" id="pwd" placeholder="密码" required tabindex="2" name="pwd">
            </div>
            <button type="submit" class="btn btn-success btn-block">登录</button>
        </form>
    </div>
</body>
</html>