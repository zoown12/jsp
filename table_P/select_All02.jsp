<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%
 Connection conn = null;
 Statement st = null;
 ResultSet  rs =null;

try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e); }

try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  Connection conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");

 Statement stmt=conn.createStatement();
 String sql="select * from woo100 order by id";
 ResultSet rs = stmt.executeQuery(sql);
 
 out.println("====회원정보입니다===<br>");
 if(!(rs.next())){
 out.println("등록된 회원없습니다.<br>");
}else
{
  do{
          out.println(rs.getString(1));
          out.println(rs.getString(1));
          out.println(rs.getString(1));
          out.println(rs.getString(1)+"<br>");
     }while(rs.next());
}
rs.close(); stmt.close(); conn.close();
}catch (SQLException e) {out.println(e.getMessage()); }
%>
<A href=py209_1_main.html>[MAIN으로 돌아가기]</A>
<A href=table_insert01.html>[회원 등록페이지로]</A>