<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>

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
 st.executeUpdate("alter table woo100 modify name char(10) not null");
 st.executeUpdate("alter table woo100 add email char(30)");
 st.executeUpdate("alter table woo100 add password integer");
}catch (SQLException e) {out.println(e); }

try{
  rs=st.executeQuery("select * form woo100");
  rsmd = rs.getMetaData();
  out.println("테이블이 수정되었습니다. <BR>");
  out.println(rsmd.getColumnCount() + "개의 컬럼(필드)를 가지고 있으며<BR>");
  for (int i=1; i<=rsmd.getColumnCount(); i++) {
   out.println(i + "번째 컬럼은 " + rsmd.getColumnName(i));
out.println(i + "번째 컬럼은 " + rsmd.getColumnTypeName(i));
out.println(i + "번째 컬럼은 " + rsmd.getPrecision(i)+"<BR>");
}

rs.close(); st.close(); conn.close();
}catch(SQLException e){ out.println(e); }
%>

<A href=py209_1_main.html>MAIN으로 돌아가기!!</A><br>