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
    System.out.println("/////////////////////From ListOfJAILS///////////////");
  try
  {
	    System.out.println("from try block");
        con1=com.pis.ConnectionPool.getConnection();
		System.out.println(".....................Connection Sucess...........");

        st1=con1.createStatement();
		System.out.println(".....................St Sucess...........");

		String query1="select * from jailorsreg";
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
      <h2 class="style1"><a href="#" class="style2">Welcome To Administrator : <%=userid%></a></h2>
      <h2><a href="#/"></a></h2>
    </div>
</div>
<div id="content">
  <div id="main1">
    <div id="example" class="post">
      <div id="div" class="boxed">
            <h2 class="title">View JAILORS INFORMATION</h2>
			  <div class="content">
                <form action="iaccountacceptform.jsp" method="get" accept-charset="utf-8">
		  
		   <table border="1"  bordercolor='#CCCCCC'>
    <tr>
      <td><h3>Jailor - Id</h3></td>
	  <td><h3>Jailor-Name</h3></td>
      <td><h3>Alloted Jail Name</h3></td>
      <td><h3>Gender</h3></td>
      <td><h3>Address</h3></td>
      <td><h3>PhoneNO</h3></td>
	  <td><h3>EmailID</h3></td>
	  <td><h3>Remarks</h3></td>
	  <td><h3>DATE</h3></td>
	 
	  
    </tr>
    <%
	
	while(rs.next())
	{
	out.println("");
	out.println("<tr>\n");
	
	out.println("<td width=100>"+ rs.getString("jailorid")+"</td>\n");
	out.println("<td width=100>"+ rs.getString("jailorname")+"</td>\n");
	out.println("<td width=100>"+rs.getString("allotedjailname") +"</td>\n");
	out.println("<td width=100>"+rs.getString("gender") +"</td>\n");
	out.println("<td width=100>"+rs.getString("address") +"</td>\n");
	out.println("<td width=100>"+rs.getString("phoneno") +"</td>\n");
	out.println("<td width=100>"+rs.getString("emailid") +"</td>\n");
	out.println("<td width=100>"+rs.getString("remarks") +"</td>\n");
	out.println("<td width=300>"+rs.getString("date") +"</td>\n");
	

	
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
