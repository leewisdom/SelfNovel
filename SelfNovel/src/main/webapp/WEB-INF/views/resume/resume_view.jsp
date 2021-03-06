<%@page import="com.sn.common.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  //contextPath
  String contextPath = request.getContextPath();
  contextPath = "http://localhost:8080/"+contextPath;  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 부트스트랩 -->
<link href="<%=contextPath%>/resources/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=contextPath%>/resources/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script type="text/javascript" src="<%=contextPath%>/resources/js/jquery-3.2.1.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="<%=contextPath%>/resources/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h2>자기소개서 view</h2>
	<hr/>
	<form action="#" name="frm" method="post" class="form-inline">
		<table class="table table-bordered table-hover table-condensed" border="1px" align="center" width="600px;">
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="신고하기" class="btn btn-default">
					<input type="button" value="목록으로" class="btn btn-default">
				</td>
			</tr>
			<tr>
				<td style="text-align: center;" width="15%">제목</td>
				<td width="70%">
					<input type="text" value="제목,분야" style="border: 0px;">
				</td>
				<td align="right" width="15%">
					<input type="text" value="작성일" style="text-align: right; border: 0px;">
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">작성자</td>
				<td colspan="2"><input type="text" style="border: 0px;"></td>
			</tr>
			<tr>
				<td style="text-align: center;">내용</td>
				<td colspan="2"><textarea rows="2" cols="50" style="border: 0px;" ></textarea> </td>
			</tr>
			<tr>
				<td colspan="3">
					<br/>
					<div align="right">
						<input type="button" value="자기소개서 Down" class="btn btn-default">
						<input type="button" value="PPT Down" class="btn btn-default">
					</div>
					<br/>
					<div align="center">
						<table class="table table-bordered table-hover table-condensed" border="1px" 
			   				   cellpadding="2" cellspacing="2" align="center" width="550px;">
							<tr>
								<td>
									<input type="text" value="제목(ex. 지원동기,입사 후 포부 등)" style="border: 0px;">
								</td>
							</tr>
							<tr>
								<td>
									<textarea rows="5" cols="80" style="border: 0px;">원본 내용</textarea>
								</td>
							</tr>
						</table>
						<br/>
						<div style="width: 600px;"> 
							<img src="" width="60px" height="50px">
							<div align="right">
								<input type="button" value="첨삭하기" class="btn btn-default">
							</div>
						</div>
						<br/>
						<table class="table table-bordered table-hover table-condensed" border="1px" 
			   				   cellpadding="2" cellspacing="2" align="center" width="550px;">
							<tr>
								<td>
									<input type="text" value="제목(ex. 지원동기,입사 후 포부 등)" style="border: 0px;">
								</td>
							</tr>
							<tr>
								<td>
									<textarea rows="5" cols="80" style="border: 0px;">첨삭 내용</textarea>
								</td>
							</tr>
						</table>
						<br/>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>