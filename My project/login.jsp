<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    String mail = request.getParameter("login_mail");
    String password = request.getParameter("login_pwd");
    String remember_me = request.getParameter("login_remember_me");
    try{
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        statement = con.createStatement();
        String sql = "SELECT email,password FROM registration where email='"+mail+"'";
        resultSet = statement.executeQuery(sql);
        String db_mail = "";
        String db_pwd = "";
        while(resultSet.next()){
            db_mail = resultSet.getString("email");
            db_pwd = resultSet.getString("password");
        }
        if(db_mail=="" && db_pwd==""){
            session.setAttribute("Email",mail);
            response.sendRedirect("http://localhost:8081/OpticLens/unsuccess-login.jsp");
        }
        if(mail.equals(db_mail)&&password.equals(db_pwd)){
            session.setAttribute("Email",db_mail);
            response.sendRedirect("http://localhost:8081/OpticLens/success-login.jsp");
        }
        if(mail!=db_mail || password != db_pwd){
            session.setAttribute("Email",mail);
            response.sendRedirect("http://localhost:8081/OpticLens/incorrect-uname-or-password.jsp");
        }
        if(mail != db_mail && password != db_pwd){
            session.setAttribute("Email",mail);
            response.sendRedirect("http://localhost:8081/OpticLens/unsuccess-login.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/login.html';
        },5000);
    </script>
</html>