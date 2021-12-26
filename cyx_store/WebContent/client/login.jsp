<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>陈妍欣的电子商务平台</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/main.css" type="text/css" />
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu_search.jsp" />
	<div id="divcontent">
		<form action="${pageContext.request.contextPath}/login" method="post">
			<table width="900px" border="0" cellspacing="0">
				<tr>
					<td style="padding:30px"><div style="height:470px">
							<b>&nbsp;&nbsp;首页&nbsp;&raquo;&nbsp;个人用户登录</b>
							<div>
								<table width="85%" border="0" cellspacing="0" align="center">
									<tr>
										<td id="logindiv">
											
												<table width="100%" border="0" cellspacing="0">
													<tr>
														<td style="text-align:center; padding-top:20px">
															<%-- <img src="${pageContext.request.contextPath }/client/images/logintitle.gif" width="150" height="30" /> --%>
															<font weight="bold" size="6px" color="green">个人用户登录</font>
														</td>
													</tr>
													<tr>
														<td style="text-align:center;padding-top:20px;"><font
															color="#ff0000">${requestScope["register_message"]}</font>
														</td>
													</tr>
													<tr>
														<td style="text-align:center">
															<table width="80%" border="0" cellspacing="0"
																style="margin-top:15px ;margin-left:auto; margin-right:auto">
																<tr>
																	<td
																		style="text-align:right; padding-top:5px; width:25%; font-size:20px">用户名：</td>
																	<td style="text-align:left"><input name="username"
																		type="text" class="textinput" style="width: 70%; height:30px" /><br><br>
																	</td>
																</tr>
																
																<tr>
																	<td style="text-align:right; padding-top:5px; font-size:20px">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
																	<td style="text-align:left"><input name="password"
																		type="password" class="textinput" style="width: 70%; height:30px" /><br><br>
																	</td>
																</tr>
																<tr>
																	<td colspan="2" style="text-align:center; font-size:20px">
																		<input type="checkbox" name="checkbox" value="checkbox01" />记住用户名
																		&nbsp;&nbsp; 
																		<input type="checkbox" name="checkbox" value="checkbox02" /> 自动登录
																	</td>
																</tr>
																<tr>
																	<td colspan="2"
																		style="padding-top:10px; text-align:center">
																		<input name="image" type="image" onclick="return formcheck()"
																		src="${pageContext.request.contextPath }/client/images/loginbutton.gif" width="40%" height="40" />
																	</td>
																</tr>

																
																<!-- <tr>
																	<td colspan="2"
																		style="padding-top:10px; text-align:center"><a
																		href="register.jsp"><img name="image"
																			src="images/signupbutton.gif" width="135" height="33" />
																	</a></td>
																</tr> -->
															</table>
														</td>
													</tr>
												</table>
											</td>
										
									</tr>
								</table>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
