<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    Object principal = auth.getPrincipal();
 
    String name = "";
    if(principal != null) {
        name = auth.getName();
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/views/include/header.jsp"  %>
<title>INDEX</title>
</head>
<body>
      <br><br>
      <div class="container text-center">
          <h1>Security Prj</h1><br>
          <!-- 인증이 안되었다면 로그인 버튼 생성 -->
          <sec:authorize access="isAnonymous()">
          	<h5><a href='<c:url value="/secu/loginPage.do"/>' class="badge badge-pill badge-info">LOGIN</a> 로그인 해주세요.</h5>
          </sec:authorize>
          <!-- 인증이 된 상태라면 유저이름 표시 및 로그아웃 버튼 생성 -->
          <sec:authorize access="isAuthenticated()">
		    <h5><%=name %>님, 반갑습니다.</h5>
			 <a href="#" onclick="document.getElementById('logout-form').submit();">Sign out</a>
			<form id="logout-form" action='<c:url value='/logout.do'/>' method="POST">
			   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
			</form>
			
		</sec:authorize>

      </div>
      <br><br>
      <div class="container text-center col-2">
          <a href='<c:url value="/page.do"/>' role="button" class="btn btn-outline-secondary btn-block">GUEST</a>
          <a href='<c:url value="/user/page.do"/>' role="button" class="btn btn-outline-secondary btn-block">USER</a>
          <a href='<c:url value="/member/page.do"/>' role="button" class="btn btn-outline-secondary btn-block">MEMBER</a>
          <a href='<c:url value="/admin/page.do"/>' role="button" class="btn btn-outline-secondary btn-block">ADMIN</a>
      </div>
</body>
</html>