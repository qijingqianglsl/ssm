<%@ include file="/common/taglibs.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>拼乎后台 - 主页</title>

    <link href="/static/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="/static/css/font-awesome.min.css?v=4.3.0" rel="stylesheet">

    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min.css?v=3.0.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="${contextPath}/static/images/user.png">
                            <div class="m-t-xs font-bold">CTO</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>张三</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 甘肃·兰州</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="${contextPath}/static/images/user.png">
                            <div class="m-t-xs font-bold">营销总监</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>李四</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 四川·成都</p>
                        <address>
                            <strong>Taobao, Inc.</strong><br>
                            E-mail:xxx@taobao.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="${contextPath}/static/images/user.png">
                            <div class="m-t-xs font-bold">Marketing manager</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>Monica Smith</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="${contextPath}/static/images/user.png">
                            <div class="m-t-xs font-bold">攻城师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>Michael Zimber</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="${contextPath}/static/images/user.png">
                            <div class="m-t-xs font-bold">设计师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>作家崔成浩</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>



    </div>
</div>

<!-- 全局js -->
<script src="${contextPath}/static/js/jquery-2.1.1.min.js"></script>
<script src="${contextPath}/static/js/bootstrap.min.js?v=3.4.0"></script>



<!-- 自定义js -->
<script src="${contextPath}/static/js/content.min.js?v=1.0.0"></script>



<script>
    $(document).ready(function () {
        $('.contact-box').each(function () {
            animationHover(this, 'pulse');
        });
    });
</script>



</body>

</html>