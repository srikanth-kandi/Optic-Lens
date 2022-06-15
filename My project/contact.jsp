<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    String name = request.getParameter("contact_name");
    String mail = request.getParameter("contact_mail");
    Long number = Long.parseLong(request.getParameter("contact_number"));
    String msg = request.getParameter("contact_msg");
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        String qry = "insert into contact values(?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1,name);
        pstmt.setString(2,mail);
        pstmt.setLong(3,number);
        pstmt.setString(4,msg);
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
            window.location.href = 'http://localhost:8081/OpticLens/index.html';
         }, 5000);
    </script>
    <p>Hey &#128075; <%= name %></p>
    <p>We will reach you out soon 📬</p>
</html>