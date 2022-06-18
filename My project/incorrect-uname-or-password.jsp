<%@ page import="java.sql.*"%>
<%
String email = (String) session.getAttribute("Email");
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/login-now.jsp';
        },7000);
    </script>
    <p>Hey &#128075; <%= email %></p>
    <p>Seem like you entered email or password wrong &#10060;</p>
    <p>Please try again</p>
</html>