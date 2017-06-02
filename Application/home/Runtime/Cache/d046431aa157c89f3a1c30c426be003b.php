<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--响应式，约束缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!--通知IE采用其支持的最新模式-->
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge">
    <title>Notus' Web Road</title>
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
    <link  rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="//cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $('#mytable').DataTable();

            $('#add').on('click', function(){
                window.location = "__URL__/add";
            });

            $('tbody tr').on('mouseover', function(){
                $(this).addClass('danger');
            });
            $('tbody tr').on('mouseout', function(){
                $(this).removeClass('danger');
            });

        });
        // Disable search and ordering by default
        $.extend( $.fn.dataTable.defaults, {
            //searching: false,
        } );
    </script>
    <style type="text/css">
        .mytitle {
            margin-top: 70px;
            margin-bottom: 50px;
        }
        #add {
            float:right;
        }
        div {
            margin-top: 20px;
        }

        .item_no {
            min-width: 32px;
            text-align: center;
        }

        .item_name {
            min-width: 0px;
        }

        .item_create, .item_modify {
            min_width: 0px;
        }

        .item_des {
            max-width: 350px;
            min-width: 200px;
            word-break: break-all;
        }

        .item_op {
            min_width: 100px;
            text-align: center;
        }

        td .item_op {
            font-size: small;
        }
    </style>

</head>
<body>
<div class="container">
    <h2 class="text-success text-center mytitle "> Notus 项目列表 </h2>
    <?php if($admin): ?><div>
            <button id="add" class="btn btn-info">添加新项目</button>
            <a href="__URL__/../Man/logout" class="btn btn-warning">退出</a>
        </div><?php endif; ?>

    <table class="table table-striped table-bordered" id="mytable">
        <thead>
        <tr class="info">
            <th class="item_no">编号</th>
            <th class="item_name">项目名称</th>
            <th class="item_create">添加时间</th>
            <th class="item_modify">修改时间</th>
            <th class="item_des">说明</th>
            <?php if($admin): ?><th class="item_op">操作</th><?php endif; ?>
        </tr>
        </thead>
        <tbody>
        <?php if(is_array($projects)): $i = 0; $__LIST__ = $projects;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                <td class="item_no"><?php echo ($i); ?></td>
                <td class="text-info"><?php echo ($vo["name"]); ?></td>
                <td><?php echo ($vo["create_at"]); ?></td>
                <td><?php echo ($vo["modify_at"]); ?></td>
                <td><?php echo ($vo["description"]); ?></td>
                <?php if($admin): ?><td class="item_op">
                        <a href="__URL__/mod/id/<?php echo ($vo["id"]); ?>" class="btn btn-sm btn-primary">修改</a>
                        <a href="__URL__/del/id/<?php echo ($vo["id"]); ?>" class="btn btn-sm btn-danger">删除</a>
                    </td><?php endif; ?>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>

    <div class="footer-copyright" align='center'>©&nbsp;2017&nbsp;bugber.com&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/">闽ICP备 17001253号</a>    bugber@bugber.com</div>
</div>
</body>
</html>