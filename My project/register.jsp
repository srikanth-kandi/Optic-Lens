<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<%
    String name = request.getParameter("register_name");
    String mail = request.getParameter("register_email");
    String password = request.getParameter("register_password");
    String cpass = request.getParameter("register_confirm_password");
    String user_type = request.getParameter("user_type");
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        String qry = "insert into registration values(?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1,name);
        pstmt.setString(2,mail);
        pstmt.setString(3,password);
        pstmt.setString(4,cpass);
        pstmt.setString(5,user_type);
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
            window.location.href = 'http://localhost:8081/OpticLens/login-now.jsp';
        }, 5000);
    </script>
    <p>Hey &#128075; <%= name %></p>
    <p>You have successfully registered as new <%= user_type %> &#128231;</p>
</html>