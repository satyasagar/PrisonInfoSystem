<%@page import="java.sql.*,com.pis.ConnectionPool"%>
<%@ page session="true" %>

<%!

Connection con=null;
Statement st=null;

Statement st1=null;

%>


<%

System.out.println(".....................From addmedicaldetails2.jsp...........");


String prisonerid1=request.getParameter("prisonerid");
System.out.println(prisonerid1);

int prisonerid=Integer.parseInt(request.getParameter("prisonerid"));
System.out.println(prisonerid);

//int prisonerid=Integer.parseInt(request.getParameter("prisonerid"));
//System.out.println(prisonerid);

String name=request.getParameter("name");
System.out.println(name);

String jail2=request.getParameter("jail2");
System.out.println(jail2);

String rft=request.getParameter("rft");
System.out.println(rft);


String bdate1=request.getParameter("bdate1");
System.out.println(bdate1);


String bdate2=request.getParameter("bdate2");
System.out.println(bdate2);


//String worktype=request.getParameter("worktype");
////System.out.println(worktype);

//String workdesc=request.getParameter("workdesc");
//System.out.println(workdesc);

//String status=request.getParameter("status");
//System.out.println(status);

//String status="Pending";
//String status="Regected";
String status="Accepted";
//String typeofuser="jailor";



System.out.println(".....................From adddisposaldetails.jsp...........");
%>

<%

try
{

con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement();
st1=con.createStatement();
System.out.println(".....................St Sucess...........");


//String query="insert into prisonersreg(jailid,prisonid,firstname,lastname,dob,haircolor,eyes,gender,claims,punishmenttype,section,dateofentry,dateofleaving,prisonercellno)  values('"+jailid+"','"+prisonerid+"','"+fname+"','"+lname+"','"+bdate+"','"+haircolor+"','"+eyes+"','"+gender+"','"+claims+"','"+punishmenttype+"','"+section+"','"+bdate1+"','"+bdate2+"','"+pcno+"' )";

//String query="insert into workdetails(prisonid,name,worktype,workdescription,startdate,status,enddate)  values('"+prisonerid+"','"+name+"','"+worktype+"','"+workdesc+"','"+bdate1+"','"+status+"','"+bdate2+"')";

String query="insert into transferdetails(prisonid,name,transferlocation,reasonfortransferring,startdate,enddate)  values('"+prisonerid+"','"+name+"','"+jail2+"','"+rft+"','"+bdate1+"','"+bdate2+"')";

st.executeUpdate(query);

System.out.println(".....................Query Executed Sucessfully...........");

String query00="update prisonersreg set jailid='"+jail2+"' where prisonid='"+prisonerid+"'";
st1.executeUpdate(query00);

System.out.println(".....................Query00 Sucess...........");



%>
<jsp:forward  page="addtransferdetails12345.jsp">
	<jsp:param name="X" value="6"/>
	</jsp:forward >
<%


}
catch(Exception e)
{

System.out.println(".....................From catch Block...........");
System.out.println(e);

}
%>