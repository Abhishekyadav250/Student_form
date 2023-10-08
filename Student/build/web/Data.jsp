<%-- 
    Document   : Data
    Created on : 02-Oct-2023, 2:10:57 pm
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
        <link rel="stylesheet" href="style.css" type="text/css"/>
    </head>
    <body>





        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sttudents", "root", "");
            Statement stmt = con.createStatement();
            ResultSet res = stmt.executeQuery("SELECT * FROM `record`");

        %>
        <h2 align="center"><font><strong>Candidate Details</strong></font></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr>

            </tr>
            <tr class="tableheader" bgcolor=" rgb(27, 124, 107)">
                <td><b>ID</b></td>
                <td><b>Name</b></td>
                <td><b>Number</b></td>
                <td><b>Email</b></td>
                <td><b>Gender</b></td> 
                <td><b>cource</b></td>
                <td><b>Possition</b></td>
                <td><b>passing year</b></td> 
                <td><b>Experience</b></td>
                <td><b>Knowledge in programing</b></td> 
                <td><b>Knowledge of sql</b></td>
                <td><b>Knowledge of UI technologies</b></td>
                 



            </tr>
            <%                try {

                    while (res.next()) {
            %>
            <tr bgcolor="#DEB887">
                <td><%=res.getString("student_id")%></td>
                <td><%=res.getString("student_name")%></td>
                <td><%=res.getString("student_number")%></td>
                <td><%=res.getString("student_email")%></td>
                <td><%=res.getString("student_gender")%></td>
                <td><%=res.getString("cource")%></td>
                <td><%=res.getString("possition")%></td>
                <td><%=res.getString("passing_year")%></td>
                <td><%=res.getString("experience")%></td>
                <td><%=res.getString("knowledge_in_programing")%></td>
                <td><%=res.getString("knowledge_of_sql")%></td>
                <td><%=res.getString("knowledge_UI_technologies")%></td>
             



            </tr>

            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </body>
</html>
