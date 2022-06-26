<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<%
    String email = request.getParameter("remove_email");
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        String qry = "delete from registration where email = '"+email+"'";
        PreparedStatement pstmt = con.prepareStatement(qry);
        int sts = pstmt.executeUpdate();
        if(sts == 1){
            response.sendRedirect("http://localhost:8081/OpticLens/admin/success-remove.jsp");
        }
        else{
            response.sendRedirect("http://localhost:8081/OpticLens/admin/unsuccess-remove.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>