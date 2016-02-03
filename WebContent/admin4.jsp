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
</head>
<body>

<%

String userid=(String)session.getAttribute("userid");

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
            <h2 class="title">JAILS INFO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin2.jsp">Back</a></h2>
			  <div class="content">
               
                  <fieldset>
                
                    
                    <div >
					
                      <p><a href="addjails123.jsp">Add Jail</a></p>
                      
                      <p><a href="deletejails.jsp">Delete Jail</a></p>
                     
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
