<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>

<%
try { Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e.getMessage());}
try{
  Connection conn = 
        DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?serverTimezone=UTC","kk1","pp11##11QQ");

   Statement stmt=conn.createStatement();
   String sql_1="SELECT  * FROM t_db1";
   ResultSet rs = stmt.executeQuery(sql_1);
%>
<table border =2>
<tr>
 <td>아이디</td> <td>비번</td> <td>이름</td>
</tr>
<%
 while(rs.next()){
    out.println("<tr>");
    out.println("<td>"+rs.getString(1) + "</td>");
   out.println("<td>"+rs.getString(2) + "</td>");  
out.println("<td>"+rs.getString(3) + "</td>");
out.println("</tr>");
  }
rs.close(); stmt.close(); conn.close();
}catch(SQLException E){out.print(E.getMessage());}
%>
</table>