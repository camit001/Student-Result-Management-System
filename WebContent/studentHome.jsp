<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try {
    String rollNo = request.getParameter("rollNo");
    Connection con = ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from student inner join result where student.rollNo=result.rollNo and student.rollNo='"+rollNo+"'");
    if(rs.next()) {
%>





<img src="logo.png"  align="left"width="50" height="50">
<center><img src="clogo.png" >
<img src="round-bsh.png" align="right"  width="50" height="50"></center>
    <a href="dgiOneView.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
.center {
      text-align: center;
    }

table {
            border-collapse: collapse; /* Remove space between table cells */
        }
        thead,td, th {
            cellpadding: 0;
             cellspacing:0;
            border: 10; 
        }

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <!--  <table cellpadding="0" cellspacing="0" border="0">-->
      <table >
      <thead>
        <tr>
          <th>institution : Hirray MCA</th>
          <th>Course : <%=rs.getString(1) %></th>
          <th>Branch : <%=rs.getString(2) %></th>
          <th class="center">RollNo: <%=rs.getString(3) %></th>
          
          <!-- <th><center>RollNo: <%=rs.getString(3) %></center></th> -->
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(4) %> </th>
          <th>Father Name: <%=rs.getString(5) %></th>
          <th>Mother Name: <%=rs.getString(6) %></th>
          <th>Gender: <%=rs.getString(7) %></th>
          <th><a title="print screen"  onclick="window.print();" target="_blank" style="cursor:pointer;"><img src="print.png"  alt="print screen" class="center"></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  
</head>
<body>
<hr class="new1">
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>MCA11</td>
        <td colspan="2">MFSC-1 </td>
        <td>Theory</td>
        <td>125</td>
        <td> 56 </td>
        <td><%=rs.getString(9) %></td>
      </tr>
      <tr>
        <td>MCA12</td>
        <td colspan="2">Advanced Java</td>
        <td>Theory</td>
        <td>100</td>
        <td>45</td>
        <td><%=rs.getString(10) %> </td>
      </tr>
      <tr>
        <td>MCA13</td>
        <td colspan="2">ADBMS</td>
        <td>Theory</td>
        <td>100</td>
        <td> 45 </td>
        <td> <%=rs.getString(11) %></td>
      </tr>
      <tr>
        <td>MCA14</td>
        <td colspan="2">SPM</td>
        <td>Theory</td>
        <td>125</td>
        <td> 56 </td>
        <td> <%=rs.getString(12) %></td>
      </tr>
      <tr>
        <td>MVAL11</td>
        <td colspan="2">DS-C/C++ Lab</td>
        <td>Practical</td>
        <td>100</td>
        <td> 46 </td>
        <td> <%=rs.getString(13) %> </td>
      </tr>
      <tr>
        <td>MCAL14</td>
        <td colspan="2">WT Lab</td>
        <td>Practical</td>
        <td>100</td>
        <td>46</td>
        <td> <%=rs.getString(14) %> </td>
      </tr>
      <tr>
        <td>MCAL12</td>
        <td colspan="2">AJ Lab</td>
        <td>Practical</td>
        <td>75</td>
        <td>34</td>
        <td> <%=rs.getString(15) %> </td>
      </tr>
      <tr>
        <td>MCAL13</td>
        <td colspan="2">ADBMS Lab</td>
        <td>Practical</td>
        <td>75</td>
        <td>34</td>
        <td> <%=rs.getString(16) %> </td>
      </tr>
      <tr>
        <td>MCAP11</td>
        <td colspan="2">Mini Project</td>
        <td>Project</td>
        <td>50</td>
        <td>23</td>
        <td> <%=rs.getString(17) %> </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>850</td>
        <td>385</td>
        <td><%int sum=rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17); out.println(sum); %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/850); %></td>
      </tr>
  </table>
    <hr class="new1">
  <h6 class ="center">Note: Institution doesn't own for the errors or omissions, if any, in this statement.
  Designed and Developed by Team-Cash</h6>
  <hr class="new1">
  <h6 class ="center">Copyright 2024 | All Right Reserved Team-Cash </h6>
  <hr class="new1">
</body>

<%}
else
{
	response.sendRedirect("errorDgiOneView.html");
	}
}
catch(Exception e)
{}
%>