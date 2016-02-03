<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Red Avenue
Version    : 1.0
Released   : 20070516
Description: A two-column fixed width template suitable for corporate use and blog sites.

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>PRISON INFORMATION SYSTEM</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {color: #CCCCCC}
-->
</style>

<SCRIPT LANGUAGE="JavaScript">
<!--
history.go(+1);
//-->
</SCRIPT>

</head>
<body>

<%@page import="java.sql.*"%>
<%@ page session="true" %>
  
  <%!
   // System.out.println();
  
  Connection con1=null;
  Statement st1=null;
  ResultSet rs=null;
  %>

<%

//String userid=request.getParameter("userid");
String userid=(String)session.getAttribute("userid");

%>
  <%
    System.out.println("///////////////////// From List of PRISONERS //////////////");
  try
  {
	    System.out.println("from try block");
        con1=com.pis.ConnectionPool.getConnection();
		System.out.println(".....................Connection Sucess...........");

        st1=con1.createStatement();
		System.out.println(".....................St Sucess...........");

		String query1="select * from prisonersreg";
		System.out.println(".....................Query Sucess...........");

		rs=st1.executeQuery(query1);
		System.out.println(".....................Query Executed Sucessfully...........");

  }
  catch(Exception e)
  {
  System.out.println("from catch block");
  System.out.println(e);
  }
  %>
  
<div id="header">
	<div id="logo">
		<h1><a href="#"><strong>PRISON INFORMATION SYSTEM </strong></a></h1>
		<h2><a href="#/"></a></h2>
	</div>
    <div id="div2">
      <h2 class="style1"><a href="#" class="style2">Welcome To JAILOR : <%=userid%></a></h2>
      <h2><a href="#/"></a></h2>
    </div>
</div>
<div id="content">
  <div id="main1">
    <div id="example" class="post">
      <div id="div" class="boxed">
            <h2 class="title">View PRISONERS INFORMATION</h2>
			  <div class="content">
                <form action="#.jsp" method="get" accept-charset="utf-8">
		  
		   <table border="1"  bordercolor='#CCCCCC'>
    <tr>
      <td><h3>Jail - Id</h3></td>
	  <td><h3>Prisoner-Id</h3></td>
      <td><h3>First Name</h3></td>
      <td><h3>Last Name</h3></td>
      <td><h3>Date of Birth</h3></td>
      <td><h3>Hair Color</h3></td>
	  <td><h3>Eyes</h3></td>
	   <td><h3>Gender</h3></td>
	  <td><h3>Claims</h3></td>
	  <td><h3>PunishmentType</h3></td>
	  <td><h3>Section</h3></td>
	  <td><h3>Date of Entry</h3></td>
	  <td><h3>Date of Leaving</h3></td>
	  <td><h3>Prisonercellno</h3></td>
    </tr>
    <%
	while(rs.next())
	{
	out.println("");
	out.println("<tr>\n");
	out.println("<td width=100>"+ rs.getString("jailid")+"</td>\n");
	out.println("<td width=100>"+ rs.getString("prisonid")+"</td>\n");
	out.println("<td width=100>"+rs.getString("firstname") +"</td>\n");
	out.println("<td width=100>"+rs.getString("lastname") +"</td>\n");
	out.println("<td width=100>"+rs.getString("dob") +"</td>\n");
	out.println("<td width=100>"+rs.getString("haircolor") +"</td>\n");
	out.println("<td width=100>"+rs.getString("eyes") +"</td>\n");
	out.println("<td width=300>"+rs.getString("gender") +"</td>\n");
	out.println("<td width=300>"+rs.getString("claims") +"</td>\n");
	out.println("<td width=100>"+rs.getString("punishmenttype") +"</td>\n");
	out.println("<td width=300>"+rs.getString("section") +"</td>\n");
	out.println("<td width=300>"+rs.getString("dateofentry") +"</td>\n");
	out.println("<td width=300>"+rs.getString("dateofleaving") +"</td>\n");
	out.println("<td width=300>"+rs.getString("prisonercellno") +"</td>\n");

	}
	
	
	%>

    <tr>
      <td colspan="5" align="right">
    
      </td>
    </tr>
	<tr>
                                          <td align="left" valign="middle" ><a href="admin2.jsp">Back</a></td>
                                          
                                        </tr>
  </table>
</form>
		      </div>
      </div>
		</div>
	</div>
</div>
<div id="footer">
	<p id="legal">Copyright &copy; 2010 Red Avenue. All Rights Reserved. Designed by Venky.</p>
	</div>
	
</body>
</html>
