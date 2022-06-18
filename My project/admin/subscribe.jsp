<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<%
    String mail = request.getParameter("Email");
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        String qry = "insert into subscribe values(?)";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1,mail);
        int sts = pstmt.executeUpdate();
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/admin/index.jsp';
         }, 5000);
    </script>
    <p>Hey &#128075; <%= mail %></p>
    <p>Thank you for subscribing &#128150;</p>
</html>