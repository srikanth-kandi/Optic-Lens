<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<%
    String email = request.getParameter("update_email");
    String user_type = request.getParameter("update_user_type");
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@srikanth-window:1521:xe", "srikanth_kandi","sri_sql1");
        String qry = "update registration set user_type = '"+user_type+"' where email = '"+email+"'";
        PreparedStatement pstmt = con.prepareStatement(qry);
        int sts = pstmt.executeUpdate();
        if(sts == 1){
            response.sendRedirect("http://localhost:8081/OpticLens/admin/success-update.jsp");
        }
        else{
            response.sendRedirect("http://localhost:8081/OpticLens/admin/unsuccess-update.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>