<%@page import="java.sql.*,com.pis.ConnectionPool"%>
<%@ page session="true" %>

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

System.out.println(".....................From addvisitors1234.jsp...........");




String vname=request.getParameter("vname");
System.out.println(vname);





String bdate=request.getParameter("bdate");
System.out.println(bdate);





String intime=request.getParameter("intime");
System.out.println(intime);


String outtime=request.getParameter("outtime");
System.out.println(outtime);


String typeofuser="jailor";



System.out.println(".....................From addvisitors1234.jsp...........");
%>

<%

try
{

con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement();
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

//String query="insert into jailorsreg(jailorid,jailorname,allotedjailname,gender,address,phoneno,emailid,password,remarks,date)  values('"+jailorid+"','"+jname+"','"+ajname+"','"+gender+"','"+address+"','"+phonno+"','"+email+"','"+pwd+"','"+remarks+"','"+bdate+"' )";
//System.out.println(".....................Query Sucess...........");

String query3="insert into visitors(visitorname,date,intime,outtime,jailid)  values('"+vname+"','"+bdate+"','"+intime+"','"+outtime+"','"+jailid+"')";
System.out.println(".....................Query3 Sucess...........");

st3.executeUpdate(query3);
System.out.println(".....................Query3 Executed Sucessfully...........");




%>
<jsp:forward  page="addvisitors12345.jsp">
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