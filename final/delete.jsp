<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>

<%
 Connection conn = null;
Statement stmt=null;
try{
  Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e){
  out.println(e.getMessage());
}

try{
 String url ="jdbc:mysql://localhost:3306/db1?serverTimezone=UTC";
conn =
DriverManager.getConnection(url,"kk1","pp11##11QQ");
stmt=conn.createStatement();
String sql="DELETE FROM t_db1 where id='14'";
stmt.executeUpdate(sql);
stmt.close(); conn.close();
}catch(SQLException E){
  out.print(E.getMessage());
}
%>