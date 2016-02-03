<%@page import="java.sql.*,com.pis.ConnectionPool"%>
<%@ page session="true" %>

<%!

Connection con=null;
Statement st=null;


%>


<%

System.out.println(".....................From addprisoners1234.jsp...........");


String jailid1=request.getParameter("jailid");
System.out.println(jailid1);

int jailid=Integer.parseInt(request.getParameter("jailid"));
System.out.println(jailid);

int prisonerid=Integer.parseInt(request.getParameter("prisonerid"));
System.out.println(prisonerid);

String fname=request.getParameter("fname");
System.out.println(fname);

String lname=request.getParameter("lname");
System.out.println(lname);

String bdate=request.getParameter("bdate");
System.out.println(bdate);

String haircolor=request.getParameter("haircolor");
System.out.println(haircolor);

String eyes=request.getParameter("eyes");
System.out.println(eyes);

String gender=request.getParameter("gender");
System.out.println(gender);



String claims=request.getParameter("claims");
System.out.println(claims);


String section=request.getParameter("section");
System.out.println(section);

String punishmenttype=request.getParameter("punishmenttype");
System.out.println(punishmenttype);

String bdate1=request.getParameter("bdate1");
System.out.println(bdate1);

String bdate2=request.getParameter("bdate2");
System.out.println(bdate2);

int pcno=Integer.parseInt(request.getParameter("pcno"));
System.out.println(pcno);



//String status="Pending";
//String status="Regected";
//String status="Accepted";
//String typeofuser="jailor";



System.out.println(".....................From addprisoners1234.jsp...........");
%>

<%

try
{

con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement();
System.out.println(".....................St Sucess...........");


String query="insert into prisonersreg(jailid,prisonid,firstname,lastname,dob,haircolor,eyes,gender,claims,punishmenttype,section,dateofentry,dateofleaving,prisonercellno)  values('"+jailid+"','"+prisonerid+"','"+fname+"','"+lname+"','"+bdate+"','"+haircolor+"','"+eyes+"','"+gender+"','"+claims+"','"+punishmenttype+"','"+section+"','"+bdate1+"','"+bdate2+"','"+pcno+"' )";
System.out.println(".....................Query Sucess...........");

st.executeUpdate(query);
System.out.println(".....................Query Executed Sucessfully...........");



%>
<jsp:forward  page="addprisoners12345.jsp">
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