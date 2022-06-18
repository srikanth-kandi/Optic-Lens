<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<%
    String logout_name = (String)session.getAttribute("success-admin-login-uname");
    try{
        session.removeAttribute("success-admin-login-uname");
        session.invalidate();
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
        },5000);
    </script>
    <p>Hey &#128075; <%= logout_name %></p>
    <p>You have successfully logged out &#128274;</p>
</html>