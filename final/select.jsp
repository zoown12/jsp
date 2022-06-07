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

Statement stmt1=conn.createStatement();
String sql_1="SELECT * FROM t_db1";
ResultSet rs = stmt1.executeQuery(sql_1);
while(rs.next()){
  out.println(rs.getString(1));
out.println(rs.getInt(2));
out.println(rs.getString(3));
out.println("<br>");
}
rs.close(); stmt1.close(); conn.close();
}catch(SQLException E){out.print(E.getMessage());}
%>
