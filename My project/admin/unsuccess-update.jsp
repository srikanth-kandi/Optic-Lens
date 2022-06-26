<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/admin/add-user.jsp';
        }, 5000);
    </script>
    <p>Hey &#128075; <% String index_uname = (String) session.getAttribute("success-admin-login-uname"); %> <%= index_uname %> (admin)</p>
    <p>User not available &#129300;</p>
    <p>Please add user now &#128515;</p>
</html>