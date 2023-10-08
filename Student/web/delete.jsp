<%-- 
    Document   : delete
    Created on : 04-Oct-2023, 1:20:15 pm
    Author     : abhishek
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
     
        <%
            String sname = request.getParameter("student_name");
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sttudents", "root", "");
            Statement stmt = con.createStatement();
           stmt.executeUpdate("delete from record where student_name = '"+sname+"'");
           response.sendRedirect("Data.jsp");

        %>
        
        
    </body>
</html>
