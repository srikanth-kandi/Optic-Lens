<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    String full_name = request.getParameter("Full_Name");
    String email = request.getParameter("Email");
    String address = request.getParameter("Address");
    String city = request.getParameter("City");
    String state = request.getParameter("State");
    int zip = Integer.parseInt(request.getParameter("Zipcode"));
    String name_on_card = request.getParameter("Name_on_card");
    Long credit_card_num = Long.parseLong(request.getParameter("Card_Number"));
    String expiry_month = request.getParameter("Expiry_Month");
    int expiry_year = Integer.parseInt(request.getParameter("Expiry_Year"));
    int cvv = Integer.parseInt(request.getParameter("CVV"));
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        String qry = "insert into payment values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1,full_name);
        pstmt.setString(2,email);
        pstmt.setString(3,name_on_card);
        pstmt.setString(4,address);
        pstmt.setLong(5,credit_card_num);
        pstmt.setString(6,city);
        pstmt.setString(7,expiry_month);
        pstmt.setString(8,state);
        pstmt.setInt(9,zip);
        pstmt.setInt(10,expiry_year);
        pstmt.setInt(11,cvv);
        int sts = pstmt.executeUpdate();
        out.println("Hey, "+full_name);
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
    <p>Your payment is confirmed &#128150;</p>
</html>