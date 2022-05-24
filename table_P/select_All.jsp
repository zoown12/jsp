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
  conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");
}catch (SQLException e) {out.println(e); }

try{
 st = conn.createStatement();
 rs = st.executeQuery("select * from woo100 order by id");
%>

<HTML>
<BODY>
<CENTER> <H3>우리 회원 정보 보기</H3>
<TABLE border=1>
 <TR>
   <TH>사용자 ID</TH>
   <TH>이름</TH>
   <TH>E-mail</TH>
</TR>
<% if (!(rs.next())) { %>
 <TR><TD colspan=4>등록된 회원이 없습니다.</TD></TR>
<% } else{
do{
 out.println("<TR>");
 out.println("<TD>" + rs.getString("id") + "</TD>");
 out.println("<TD>" + rs.getString("name") + "</TD>");
 out.println("<TD>" + rs.getString("email") + "</TD>");
 out.println("<TR>"); 
  }while(rs.next());
}
rs.close(); st.close(); conn.close();
}catch (SQLException e){
  System.out.println(e) ;
}
%>
</TABLE>
<table>
<td><A href=py209_1_main.html>[MAIN으로 돌아가기]</A></td>
<td><A href=table_insert01.html>[회원 등록페이지로]</A></td>
</CENTER>
</BODY>
</HTML>