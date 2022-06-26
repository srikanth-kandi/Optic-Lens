<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/admin/remove-user.jsp';
        }, 5000);
    </script>
    <p>Hey &#128075; <% String index_uname = (String) session.getAttribute("success-admin-login-uname"); %> <%= index_uname %> (admin)</p>
    <p>Removed user successfully &#128150;</p>
</html>