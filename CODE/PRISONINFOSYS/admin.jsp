<%@page import="java.sql.*" errorPage="Error.jsp"%>
<%@page session="true" %>

<%!


Connection con=null;
//Connection con1=null;
//Connection con2=null;
//Connection con3=null;
Statement st=null;
//Statement st1=null;
//Statement st2=null;
//Statement st3=null;
ResultSet rs1=null;
//ResultSet rs2=null;
//ResultSet rs3=null;
ResultSet rs=null;
%>


<%

System.out.println(".....................From Admin.jsp............");


String userid=request.getParameter("userid");
System.out.println(userid);

//int iid=Integer.parseInt(request.getParameter("userid"));
//System.out.println(iid);

String pwd=request.getParameter("pwd");
System.out.println(pwd);

session.setAttribute("userid",userid);
//session.setAttribute("pwd",pwd);
String typeofuser=request.getParameter("typeofuser");
System.out.println(typeofuser);

System.out.println(".....................From Admin.jsp...........");
%>

<%
int flag=0;
int flag1=0;
try
{
//con=com.mbs.ConnectionPool.getConnection();
con=com.pis.ConnectionPool.getConnection();
//con1=com.icici.ConnectionPool1.getConnection();
//con2=com.sbi.ConnectionPool2.getConnection();
//con3=com.obc.ConnectionPool3.getConnection();
System.out.println(".....................Connection Sucess...........");

//st=con.createStatement();

st=con.createStatement();
//st1=con1.createStatement();
//st2=con2.createStatement();
//st3=con3.createStatement();
System.out.println(".....................St Sucess...........");


	if(typeofuser.equals("administrator"))
	{
 

		String query="select * from login where userid='"+userid+"' and password='"+pwd+"' and role='"+typeofuser+"'";
		System.out.println(".....................Query Sucess...........");


		rs=st.executeQuery(query);
		System.out.println("..................admin...Query Executed Sucessfully...........");

	while(rs.next())
	{
	      System.out.println("............	while(rs.next())..........");

				
				 flag=1;
      			
				
	}
if(flag==1)
		{
	%>	 
	<jsp:forward  page="admin2.jsp">
	<jsp:param name="userid" value="<%=userid%>"/>
	</jsp:forward >
   <%
		}

	else 
	{
	/*If username and password is not valid, then the user is redirected back to Loginpage*/
%>

	<jsp:forward page="admin1.jsp">
	<jsp:param name="error" value="invalid" />
   	</jsp:forward>
<%
	}

	}

	else if(typeofuser.equals("jailor"))
	{
 

		String query="select * from login where userid='"+userid+"' and password='"+pwd+"' and role='"+typeofuser+"'";
		System.out.println(".....................Query Sucess...........");


		rs=st.executeQuery(query);
		System.out.println("..................JAILOR...Query Executed Sucessfully...........");

	while(rs.next())
	{
	      System.out.println("............	while(rs.next())..........");

				
				 flag=1;
      			
				
	}
if(flag==1)
		{
	%>	 
	<jsp:forward  page="jailor.jsp">
	<jsp:param name="userid" value="<%=userid%>"/>
	</jsp:forward >
   <%
		}

	else 
	{
	/*If username and password is not valid, then the user is redirected back to Loginpage*/
%>

	<jsp:forward page="admin1.jsp">
	<jsp:param name="error" value="invalid" />
   	</jsp:forward>
<%
	}

	}
	else
	{
	%>

	<jsp:forward page="errorpage.jsp">
	<jsp:param name="error" value="invalid" />
   	</jsp:forward>
<%
	
	}


	
}

catch(Exception e)
{
System.out.println(".....................From catch Block...........");
System.out.println(e);
}
%>

