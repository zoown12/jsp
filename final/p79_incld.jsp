<%@ page language="java" contentType="text/html; charset=utf-8" %>
http://localhost:8080/jsp/LJC/p79_incld.jsp<br>
include 액션태그 호출 전<br>
<% out.println("지금 호출합니다.<br>"); %>
<hr>
<jsp:include page="p90_request.jsp" />
<hr>
<%
out.print("include액션 호출 후입니다.<br>");
%>