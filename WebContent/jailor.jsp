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

<%

//String userid=request.getParameter("userid");
String userid=(String)session.getAttribute("userid");

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
            <h2 class="title">Services&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin1.jsp">Logout</a></h2>
			  <div class="content">
               
                  <fieldset>
                
                    
                    <div >
                      <p><a href="addprisoners123.jsp">Add Prisoners</a></p>
                     
                       
                      <p><a href="listofprisoners.jsp">View Prisoners Details</a></p>
                       
                       <p><a href="addtransferdetails.jsp">Transfer Prisoners Details</a></p>                       
                        
                      <p><a href="addprisonerpunishments.jsp">View Punishment Details</a></p>


						<p><a href="addworkdetails.jsp">Add Work Details</a></p>

						<p><a href="updateworkdetails.jsp">Update Work Details</a></p>

						<p><a href="viewworkdetails.jsp">View Work Details</a></p>
                       
					  <p><a href="addbaildetails.jsp">Add Bail Details</a></p>     
                      <p><a href="addbaildetails0.jsp">View Bail Details</a></p>
                       
                       <p><a href="adddisposaldetails.jsp">Add Disposal Details</a></p>      
					   <p><a href="viewdisposaldetails0.jsp">View Disposal Details</a></p>                       
                       
					   <p><a href="addmedicaldetails.jsp">Add Medical Reports</a></p>      
                       <p><a href="viewmedicaldetails0.jsp">View Medical Reports</a></p>

					  <p><a href="addvisitors123.jsp">Add Vistor Details</a></p>

					  <p><a href="listofvisitors.jsp">View Vistor Details</a></p>


                    </div>
                  <p align="center">&nbsp;</p>
                  <p align="left">&nbsp;</p>
                  </fieldset>
               
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
