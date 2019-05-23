<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: smfx1314
  Date: 2018/4/27
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息页</title>
</head>
<body>
    <table>
        <tr>
            <td>id</td>
            <td>姓名</td>
            <td>操作</td>
        </tr>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td ><a href="<%=request.getContextPath() %>/delUser?id=${user.id}">删除</a></td>
                <td><a href="<%=request.getContextPath() %>/editUserPage" >编辑</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>