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
int prisonerid=Integer.parseInt(request.getParameter("prisonerid"));

%>
<%
con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
System.out.println(".....................St Sucess...........");


st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();


/*
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
*/

String query2="select punishmenttype,dateofleaving from prisonersreg where prisonid='"+prisonerid+"' ";
rs2=st2.executeQuery(query2);

//boolean flag=rs2.last();
//System.out.println("flag " +  flag);
//int std=0;
//System.out.println("initial val " + std);

//if(flag)
//{
//std=rs2.getInt("prisonid");
//std++;
//System.out.println("inside  if " + std);
//}
//else
//{
//std=100;
//}
//System.out.println("after if " + std);



//String query3="select prisonercellno from prisonersreg order by prisonercellno";
//rs3=st3.executeQuery(query3);

//boolean flag1=rs3.last();
//System.out.println("flag " +  flag1);
//int std2=0;
//System.out.println("initial val " + std2);

//if(flag1)
//{
//std2=rs3.getInt("prisonercellno");
//std2++;
//System.out.println("inside  if " + std2);
//}
//else
//{
//std2=5000;
//}
//System.out.println("after if " + std2);
rs2.next();

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
            <h2 class="title">View Prisoner Punishments&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="addprisonerpunishments.jsp">Back</a> </h2>
			  <div class="content">
				
				 <form name="form2" action="#" method="POST" >
				
				<table border="0" align="center" cellpadding="0" cellspacing="2">
               
				 <tr>
                <th width="155"><div align="center">Prisoner ID</div></th>
                <td width="275"><input type="text" name="prisonerid" readonly value="<%=prisonerid%>" /></td></tr>
				
								
				<tr>
                <th width="155"><div align="center">Punishment Type</div></th>
                <td width="400"><input type="text"  size="40" name="prisonerid" readonly value="<%=rs2.getString(1)%>" /></td></tr>

				 <tr>
                <th width="155"><div align="center">End Date</div></th>
                <td width="275"><input type="text" name="prisonerid"  readonly value="<%=rs2.getString(2)%>" /></td></tr>
				
				
				
              
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
