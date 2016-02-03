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
 <script type="text/javascript" src="scripts/ts_picker.js"> </script>
</head>
<body>

<%@page import="java.sql.*" errorPage="Error.jsp"%>
<%@page session="true" %>

<%!


Connection con=null;
//Connection con1=null;
//Connection con2=null;
//Connection con3=null;
Statement st=null;
Statement st1=null;

//Statement st1=null;
//Statement st2=null;
//Statement st3=null;
ResultSet rs1=null;
//ResultSet rs2=null;
//ResultSet rs3=null;
ResultSet rs=null;
int no;
String status="Pending";
%>

<%
con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
System.out.println(".....................St Sucess...........");


st1=con.createStatement();


String query="select  jailorid from jailorsreg order by jailorid";
System.out.println(".....................Query Sucess...........");


String query1="select  jailname from newjail where status='"+status+"'";
System.out.println(".....................Query1 Sucess...........");

rs=st.executeQuery(query);
System.out.println("...................Query Executed Sucessfully...........");

rs1=st1.executeQuery(query1);
System.out.println("...................Query1 Executed Sucessfully...........");


boolean flag=rs.last();
System.out.println("flag " +  flag);
int std=0;
System.out.println("initial val " + std);

if(flag)
{
std=rs.getInt("jailorid");
std++;
System.out.println("inside  if " + std);
}
else
{
std=1000;
}
System.out.println("after if " + std);


%>
<div id="header">
	<div id="logo">
		<h1><a href="#"><strong>PRISON INFORMATION SYSTEM </strong></a></h1>
		<h2><a href="#/"></a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="#" title="">Homepage</a></li>
			<li><a href="#" title="">About Us</a></li>
			<li><a href="#" title="">Login</a></li>
			<li><a href="#" title="">Clients</a></li>
			<li><a href="#" title="">Support</a></li>
		</ul>
	</div>
</div>
<div id="content">
  <div id="main">
    <div id="example" class="post">
      <div id="div" class="boxed">
            <h2 class="title">Add Visitors &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="jailor.jsp">Back</a></h2>
			  <div class="content">
				
				 <form name="form2" action="addvisitors1234.jsp" method="post" >
            <table border="0" align="center" cellpadding="0" cellspacing="2">
                
              
              <tr>
                <th><div align="center">Visitors Name</div></th>
                <td><input type="text" name="vname" value="" /></td></tr>
				
				
				 				
				 
				<tr>
                 <th width="155"><div align="center">Date </div></th>
                 <td width="275"><input type="text" name="bdate" value="" readonly=""/><a href="javascript:show_calendar('document.form2.bdate', document.form2.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>
				
				 
				   <tr>
                <th><div align="center">In Time </div></th>
                <td><input type="text" name="intime" value="" /></td></tr>

				 <tr>
                <th><div align="center">Out Time</div></th>
                <td><input type="text" name="outtime" value="" /></td></tr>



				 
				 
				

				
				
              <tr><td class="submission" colspan="2"><input type="submit" name="s" value="Submit" /></td></tr>
            </table>
          </form>
				
				
				
				
				
		      </div>
      </div>
	</div>
	</div>
</div>
<div id="footer">
	<p id="legal"></p>
	</div>
</body>
</html>
