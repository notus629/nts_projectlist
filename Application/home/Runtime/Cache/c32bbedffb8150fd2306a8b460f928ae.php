<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加项目</title>
    <style>
        form{
            margin-top: 30px;
        }
        div {
            margin: 10px 60px;
        }
    </style>
</head>
<body>
<form action="__URL__/addop" method="post">
    <div>
        <label for="name">
            项目名称：<br/>
            <input type="text" id="name" name="name" placeholder="项目名称" size="49" required autofocus>
        </label>
    </div>
    <div>
        <label for="description">
            项目说明：<br/>
            <textarea name="description" id="description" cols="50" rows="12" placeholder="项目说明"></textarea>
        </label>
    </div>
    <div>
        <input type="submit" value="提交">
    </div>
</form>
</body>
</html>