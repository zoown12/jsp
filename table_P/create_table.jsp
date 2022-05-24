<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%
 Connection conn = null;
 Statement st = null;
 ResultSet  rs =null;
 ResultSetMetaData rsmd=null;
 
try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e); }

try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");
}catch (SQLException e) {out.println(e); }

try{
 st = conn.createStatement();
 st.executeUpdate("create table woo100(id char(10) primary key, name char(10))");
}catch (SQLException e) {out.println(e); }

try{
  rs=st.executeQuery("select * form woo100");
  rsmd = rs.getMetaData();
  out.println("새로운 테이블이 생성되었습니다.<BR>");
  out.println(rsmd.getColumnCount() + "개의 컬럼(필드)를 가지고 있으며<BR>");
  out.println("첫번째 컬럼은" + rsmd.getColumnName(1) + "<BR>");
  out.println("첫번째 컬럼은" + rsmd.getColumnName(2) + "<BR>");

rs.close(); st.close(); conn.close();
}catch(SQLException e){ out.println(e); }
%>
<A href=py209_1_main.html>MAIN으로 돌아가기!!</A><br>