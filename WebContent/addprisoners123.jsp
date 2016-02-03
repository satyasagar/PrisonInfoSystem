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
Statement st2=null;
Statement st3=null;
ResultSet rs1=null;
ResultSet rs2=null;
ResultSet rs3=null;
ResultSet rs=null;
int no;
String status="Pending";
%>
<%

//String userid=request.getParameter("userid");
String userid=(String)session.getAttribute("userid");

%>
<%
con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
System.out.println(".....................St Sucess...........");


st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();



String query="select  allotedjailname from jailorsreg where jailorid='"+userid+"'";
System.out.println(".....................Query Sucess...........");

rs=st.executeQuery(query);

rs.next();
String allotedjailname=rs.getString(1);
System.out.println("...................Query Executed Sucessfully..........."+allotedjailname);

String query1="select  jailid from newjail where jailname='"+allotedjailname+"'";
System.out.println(".....................Query1 Sucess...........");

rs1=st1.executeQuery(query1);

rs1.next();
int jailid=rs1.getInt(1);
System.out.println("...................Query1 Executed Sucessfully..........."+jailid);


String query2="select prisonid from prisonersreg order by prisonid";
rs2=st2.executeQuery(query2);

boolean flag=rs2.last();
System.out.println("flag " +  flag);
int std=0;
System.out.println("initial val " + std);

if(flag)
{
std=rs2.getInt("prisonid");
std++;
System.out.println("inside  if " + std);
}
else
{
std=100;
}
System.out.println("after if " + std);



String query3="select prisonercellno from prisonersreg order by prisonercellno";
rs3=st3.executeQuery(query3);

boolean flag1=rs3.last();
System.out.println("flag " +  flag1);
int std2=0;
System.out.println("initial val " + std2);

if(flag1)
{
std2=rs3.getInt("prisonercellno");
std2++;
System.out.println("inside  if " + std2);
}
else
{
std2=5000;
}
System.out.println("after if " + std2);


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
            <h2 class="title">Add Prisoners&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="jailor.jsp">Back</a> </h2>
			  <div class="content">
				
				 <form name="form2" action="addprisoners1234.jsp" method="post" >
				
				<table border="0" align="center" cellpadding="0" cellspacing="2">
               
				<tr>
                <th width="155"><div align="center">Jail ID</div></th>
                <td width="275"><input type="text" name="jailid" readonly value="<%=jailid%>" /></td></tr>

				<tr>
                <th width="155"><div align="center">Prisoner ID</div></th>
                <td width="275"><input type="text" name="prisonerid" readonly  value="<%=std%>" /></td></tr>
              
              <tr>
                <th><div align="center">First Name</div></th>
                <td><input type="text" name="fname" value="" /></td></tr>

				<tr>
                <th><div align="center">Last Name</div></th>
                <td><input type="text" name="lname" value="" /></td></tr>
				
				<tr>
                 <th width="155"><div align="center">Date of Birth </div></th>
                 <td width="275"><input type="text" name="bdate" value="" readonly=""/><a href="javascript:show_calendar('document.form2.bdate', document.form2.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>

				<tr>
                <th> <div align="center">Hair Color</div></th>
                <td><input type="text" name="haircolor" value="" /></td></tr>

				<tr>
                <th> <div align="center">Eyes</div></th>
                <td><input type="text" name="eyes" value="" /></td></tr>

				 
				 <tr>
                 <th width="155"><div align="center">Gender</div></th>
                 <td width="275"><input type="radio" name="gender" value="male" />MALE <input type="radio" name="gender" value="female" />FEMALE</td></tr>
				 
				
				
				<tr>
                <th> <div align="center">Claims </div></th>
                <td><input type="text" name="claims" value="" /></td></tr>
				
				<tr>
                <th> <div align="center">Section </div></th>
                <td><select name="section">
				<option>select</option>
				<option value="498">498</option>
				<option value="320">320</option>
				<option value="302">302</option>
				<option value="420">420</option>
				<option value="198">198</option>
				</td></tr>
				
				
				
				<tr>
                <th> <div align="center">PunishmentType </div></th>
                <td><select name="punishmenttype">
				<option>select</option>
				<option value="7 Years imprisonment ,1500Rs">7 Years imprisonment ,1500Rs</option>
				<option value="Life Time">Life Time</option>
				<option value="14 Years">14 Years</option>
				<option value="420">420</option>
				<option value="198">198</option>
				</td></tr>
				
				


				 <tr>
                 <th width="155"><div align="center">Date of Entry </div></th>
                 <td width="275"><input type="text" name="bdate1" value="" readonly=""/><a href="javascript:show_calendar('document.form2.bdate1', document.form2.bdate1.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>

				<tr>
                 <th width="155"><div align="center">Date of Leaving </div></th>
                 <td width="275"><input type="text" name="bdate2" value="" readonly=""/><a href="javascript:show_calendar('document.form2.bdate2', document.form2.bdate2.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td></tr>
				<tr>
                <th> <div align="center">Prisoner Cell No </div></th>
                <td><input type="text" name="pcno"  readonly value="<%=std2%>" /></td></tr>
				
				

				
				
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
