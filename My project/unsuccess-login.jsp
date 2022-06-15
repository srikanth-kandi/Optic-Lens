<%@ page import="java.sql.*"%>
<%
String email = (String) session.getAttribute("Email");
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/register.html';
        },5000);
    </script>
    <p>Hey &#128075; <%= email %></p>
    <p>It seem's like you're not registered yet &#128533;</p>
</html>