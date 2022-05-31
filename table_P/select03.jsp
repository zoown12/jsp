<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<% PreparedStatement pst = null;
String id1=request.getParameter("id");
String password = request.getParameter("pwd").trim();
int password_s = Integer.parseInt(password);

try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e); }


try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  Connection conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");
String sql="select * from woo100 where id=?";
pst=conn.prepareStatement(sql);
pst.setString(1,id1);
ResultSet rs = pst.executeQuery();

out.print("===회원정보입니다.===");

if(!(rs.next())){
 out.println("등록된 회원없습니다.<br>");
}else
{if(password_s == rs.getInt(4)){
  out.println("사용자ID = " +id1+"인 회원정보<br>");
  out.println("정보변경하려면 내용입력후 <수정>클릭<br>");
  out.println("============<수정:시작>==========");

%>
<form method="post" action="update.jsp">
<input type="hidden" value="<%=id1%>" name="id2"> <br>
이름:<input type="text" value="<%=rs.getString(2) %>" name="name1"> <br>
메일:<input type="text" value="<%=rs.getString(3) %>" name="mail"> <br>

</form>

<%
out.println("============수정<끝>===========");
}else{out.println("비밀번호 틀려요.");}
}
rs.close(); pst.close(); conn.close();
}catch (SQLException e) {out.println(e.getMessage()); }
%>
<a href=py209_1_main.html>[MAIN으로 돌아가기]</A>
<a href="select_All.jsp">회원조회(전체) 페이지</a><br>