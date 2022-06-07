<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%
 Connection conn = null;
 Statement st = null;
 ResultSet  rs =null;
 String p_id = request.getParameter("h_id");
 String p_name=request.getParameter("h_name");
 String p_mail = request.getParameter("h_mail");
 int p_pwd = Integer.parseInt(request.getParameter("h_pwd"));
 int cnt=0;

try{
 Class.forName("com.mysql.jdbc.Driver");
}catch (ClassNotFoundException e) {out.println(e); }

try{
  String url = "jdbc:mysql://localhost:3306/db22?serverTimezone=UTC";
  conn = DriverManager.getConnection(url,"kk1","pp11##11QQ");

st=conn.createStatement();
rs=st.executeQuery("select * from woo100 where id=' "+p_id+"'");
if(!(rs.next())){
 String sql ="insert into woo100(id,name,email,password)";
 sql=sql+"values('" + p_id +"','"+p_name+"',";
 sql=sql+"'" + p_mail + " ' , " + p_pwd +")";
 cnt=st.executeUpdate(sql);
if(cnt>0) {out.println("데이터가 성공적으로 입력<hr>");
  }else{out.println("데이터가 입력되지 않았습니다.");}
}else{out.println("이미 등록된 id입니다.<hr>");
}
st.close(); conn.close();
}catch (SQLException e) {
              out.println("다음과 같은 오류 발생" + e.toString() + "<br>"); 
}
%>
<a href="table_insert01.html">회원등록 페이지로</a><br>
<a href="select_All.jsp">등록된 모든회원페이지로</a><br>
