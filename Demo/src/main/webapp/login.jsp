<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/cssjs.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>拼乎后台 - 登录</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

</head>
<body>
<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>

            <h2 class="logo-name" style="font-size: 150px;margin-top: 33%">拼乎</h2>

        </div>
        <h3>欢迎使用拼乎后台管理系统</h3>

        <form class="m-t" role="form" id="loginForm" action="#">
            <div class="form-group">
                <input type="text" id="loginname" name="loginname" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="密码" required="">
            </div>
            <button type="button" onclick="submitLogin()" class="btn btn-primary block full-width m-b">登 录</button>
            <p class="text-muted text-center"> <a href="javascript:void(0)" onclick="toResetPass()"><small>忘记密码了？</small></a>
            </p>

        </form>
    </div>
</div>

<script>
    var contextPath = '${contextPath}';
    function submitLogin(){

        var showPhoneObj = $("#loginname");
        if(isEmpty(showPhoneObj.val())){
            layer.msg('请输入商户账号（手机号）');
            showPhoneObj.focus();
            return;
        }
        var businessPasswdObj = $("#password");
        if(isEmpty(businessPasswdObj.val())){
            layer.msg("请输入密码");
            businessPasswdObj.focus();
            return;
        }

        //序列号表单
        var params = $("#loginForm").serialize();
        $.ajax({
            type:"post",
            url:"${path}/user/login",
            data:params,
            success:function(data){
                if("success" == data){
                    window.location.href=contextPath+"/index.jsp";
                }else if("userStatusErr" == data){
                    layer.msg("本账号未获取到登陆权限");
                }else{
                    layer.msg("用户名或密码错误");
//                    swal({title:"提示信息",text:"登陆失败！",type: "error"},null);
                }

            }
        });
    }

    //去修改密码页面
    function toResetPass(){
        window.location.href="${contextPath}/default/toResetPass.html?showPhone="+$("#phone").val();
    }


</script>

</body>

</body>
</html>