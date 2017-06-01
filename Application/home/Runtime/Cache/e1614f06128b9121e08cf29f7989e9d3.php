<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改项目</title>
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
<form action="__URL__/modop" method="post">
    <div>
        <label for="name">
            项目名称：<br/>
            <input type="text" id="name" name="name" placeholder="项目名称" size="49" required autofocus value="<?php echo ($item["name"]); ?>">
        </label>
    </div>
    <div>
        <label for="description">
            项目说明：<br/>
            <textarea name="description" id="description" cols="50" rows="12" placeholder="项目说明"><?php echo ($item["description"]); ?></textarea>
        </label>
    </div>
    <div>
        <input type="submit" value="提交">
    </div>
    <input type="text" hidden name="id" value="<?php echo ($item["id"]); ?>">
</form>
</body>
</html>