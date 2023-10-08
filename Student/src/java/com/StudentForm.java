package com;

import java.io.FileInputStream;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentForm extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        try {

            String ssname = req.getParameter("sname");
            String number = req.getParameter("number");
            int no = Integer.parseInt(number);
             String email = req.getParameter("email");
            String gender = req.getParameter("gender");
            String possition = req.getParameter("possition");
            String year = req.getParameter("year");
            String cource = req.getParameter("cource");
            String experience = req.getParameter("experience");
            String knowledge = req.getParameter("knowledge");
            String knowledgeofsql = req.getParameter("knowledgeofsql");
            String  UItechnologies= req.getParameter("UItechnologies");
            String interview = req.getParameter("interview");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sttudents", "root", "");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO RECORD(student_name,student_number,student_email,student_gender,possition,passing_year,cource,experience,knowledge_in_programing,knowledge_of_sql,knowledge_UI_technologies,virtual_interview) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");

            stmt.setString(1, ssname);
            stmt.setInt(2, no);
            stmt.setString(3, email);
            stmt.setString(4, gender);
            stmt.setString(5,possition);
            stmt.setString(6,year);
            stmt.setString(7,cource);
            stmt.setString(8, experience);
            stmt.setString(9,knowledge);
            stmt.setString(10, knowledgeofsql);
            stmt.setString(11, UItechnologies);
            stmt.setString(12, interview);

            stmt.executeUpdate();

            resp.sendRedirect("index.html");

        } catch (Exception e) {

            System.out.println(e);
        }

    }

}
