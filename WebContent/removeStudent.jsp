<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*"%>
<%
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollNo = request.getParameter("rollNo");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String motherName = request.getParameter("motherName");
String gender = request.getParameter("gender");

String s1 = request.getParameter("s1");
String s2 = request.getParameter("s2");
String s3 = request.getParameter("s3");
String s4 = request.getParameter("s4");
String s5 = request.getParameter("s5");
String s6 = request.getParameter("s6");
String s7 = request.getParameter("s7");
String s8 = request.getParameter("s8");

try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    
    // Deleting from 'student' table
    st.executeUpdate("DELETE FROM student WHERE rollNo='" + rollNo + "'");
    
    // Deleting from 'result' table
    st.executeUpdate("DELETE FROM result WHERE rollNo='" + rollNo + "'");
    
    response.sendRedirect("adminHome.jsp");
} catch(Exception e) {
    out.println(e);
}
%>
