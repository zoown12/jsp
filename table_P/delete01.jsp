<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String id= request.getParameter("id");
Connection con =null;
Statement st =null;
String sql=null;

try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e.getMessage()); }

try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  Connection conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");

st=conn.createStatement();
sql="DELETE FROM woo100 where id='" + id + "'";

st.executeUpdate(sql);

st.close(); conn.close();
}catch(SQLException E){out.print(E.getMessage());}
%>
<jsp:forward page="select_All.jsp"/>
