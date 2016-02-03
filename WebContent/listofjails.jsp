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
<%@page import="java.sql.*,com.pis.ConnectionPool"%>
<%@ page session="true" %>

<%!

Connection con=null;
Statement st=null;


%>
<%

//String userid=request.getParameter("userid");
String userid=(String)session.getAttribute("userid");

%>
<%
con=com.pis.ConnectionPool.getConnection();
String qry="select * from newjail";
st=con.createStatement();
ResultSet rs=st.executeQuery(qry);
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
            <h2 class="title">View List of Jails</h2>
			  <div class="content">
                <form action="#.jsp" method="get" accept-charset="utf-8">
<table border="1"  bordercolor='#CCCCCC'>
<tr>
  <td><h3>Jail ID</h3></td>
  <td><h3>Jail Name</h3></td>
  <td><h3>Jail Location</h3></td>
  <td><h3>District</h3></td>
  <td><h3>Pin Code</h3></td>
  <td><h3>Phone No</h3></td>
  <td><h3>Remarks</h3></td>
  <td><h3>Status</h3></td>
  <td><h3>Date</h3></td>
   
</tr>
<% 
while(rs.next())
{
	out.println("");
	out.println("<tr>\n");
	
	out.println("<td width=100>"+ rs.getString(1)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(2)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(3)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(4)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(5)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(6)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(7)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(8)+"</td>\n");
	out.println("<td width=100>"+ rs.getString(9)+"</td>\n");
	
/*out.println(rs.getString(1));
out.println(rs.getString(2));
out.println(rs.getString(3));
out.println(rs.getString(4));
out.println(rs.getString(5));
out.println(rs.getString(6));
out.println(rs.getString(7));
out.println(rs.getString(8));
out.println(rs.getString(9));*/
}

%>

<tr>
      <td colspan="5" align="right">
    
      </td>
    </tr>
	<tr>
                                          <td align="left" valign="middle" ><a href="jailor.jsp">Back</a></td>
                                          
                                        </tr>
  </table>