<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
Connection conn = null;
try{
     Class.forName("com.mysql.jdbc.Driver");
     out.println("드라이버 로딩성공");
}catch (ClassNotFoundException e){
  out.println("드라이버 로딩 실패");
  out.println(e.getMessage());
}
%>