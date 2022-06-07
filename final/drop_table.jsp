<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%
Connection conn = null;
 Statement st = null;

try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e); }

try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");
}catch (SQLException e) {out.println(e); }

try{
 st = conn.createStatement();
 st.executeUpdate("drop table woo100");
}catch (SQLException e) {out.println(e); }

%>
<A href=py209_1_main.html>MAIN으로 돌아가기!!</A><br>