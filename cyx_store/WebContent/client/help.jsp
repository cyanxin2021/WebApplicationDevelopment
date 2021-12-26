<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>陈妍欣的电子商务平台</title>
	<%-- 导入css --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/main.css" type="text/css" />
</head>

<body class="main">
	<%@include file="head.jsp"%>
	<div align="left" style="background-color:#fff799;">
        <ul>
            <br/><br/><br/><br/>
            <li><a href="#"><p style="font-size:20px;">新手上路指南</p></a></li>
            <li><a href="#"><p style="font-size:20px;">如何登录</p></a></li>
            <li><a href="#"><p style="font-size:20px;">注册失败怎么办</p></a></li>
            <li><a href="#"><p style="font-size:20px;">如何修改密码</p></a></li>
            <li><a href="#"><p style="font-size:20px;">支付失败怎么办</p></a></li>
            <li><a href="#"><p style="font-size:20px;">咨询客服</p></a></li>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        </ul>
    </div>
	
	<%@ include file="foot.jsp" %>
</body>
</html>
