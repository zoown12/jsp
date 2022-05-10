<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
Connection conn = null;
try{
  Class.forName("com.mysql.jdbc.Driver");
  catch(ClassNotFoundException e){ 
       out.println(e.getMessage());
   }
}

try{
conn =
DriverManger.getConnection("jdbc:mysql://localhost:3306/db1?serverTimeone=UTC","kk1","pp11##11QQ");
 out.println("==DB 연결 ==<br>");
}catch(SQLException E){
  out.println("=DB 연결안됨 ==<br>");
  out.println("E.getMessage());}
}

%>