<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    String mail = (String)session.getAttribute("Email");
    try{
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        statement = con.createStatement();
        String sql = "SELECT username,user_type FROM registration where email='"+mail+"'";
        resultSet = statement.executeQuery(sql);
        String db_uname = "";
        String db_type = "";
        while(resultSet.next()){
            db_uname = resultSet.getString("username");
            db_type = resultSet.getString("user_type");
        }
        out.println("Hey! "+db_uname+" ("+db_type+")");
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/OpticLens/index.html';
        },5000);
    </script>
    <!--<p>Hey &#128075; <%= mail %></p>-->
    <p>You have successfully logged in! &#128275;</p>
</html>