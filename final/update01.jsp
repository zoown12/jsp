<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
Statement st =null;
String id=request.getParameter("id2");
String name=request.getParameter("name1");
String mail=request.getParameter("mail");

try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e.getMessage()); }

try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  Connection conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");

st=conn.createStatement();
String sql="update woo100 set            ";
sql=sql + "name='"+ name + "'," + "email='" + mail + "'";
sql=sql+"WHERE id='" + id + "'";

st.executeUpdate(sql);

st.close(); conn.close();
}catch(SQLException E){out.print(E.getMessage());}
%>
<jsp:forward page="select_All.jsp"/>
