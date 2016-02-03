<%@page import="java.sql.*,com.pis.ConnectionPool"%>
<%@ page session="true" %>

<%!

Connection con=null;
Statement st=null;


%>


<%

System.out.println(".....................From addjailors1234.jsp...........");


//String jailorid1=request.getParameter("jailorid");
//System.out.println(jailorid1);

//int jailorid=Integer.parseInt(request.getParameter("jailorid"));
//System.out.println(jailorid);


String jailid1=request.getParameter("jailid");
System.out.println(jailid1);

int jailid=Integer.parseInt(request.getParameter("jailid"));
System.out.println(jailid);

String jname=request.getParameter("jname");
System.out.println(jname);

String jlocation=request.getParameter("jlocation");
System.out.println(jlocation);

String district=request.getParameter("district");
System.out.println(district);



String bdate=request.getParameter("bdate");
System.out.println(bdate);





String pincode=request.getParameter("pincode");
System.out.println(pincode);


String phonno=request.getParameter("phonno");
System.out.println(phonno);


String remarks=request.getParameter("remarks");
System.out.println(remarks);

String status="Pending";
//String status="Regected";
//String status="Accepted";




System.out.println(".....................From addjails1234.jsp...........");
%>

<%

try
{

con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement();
System.out.println(".....................St Sucess...........");

//String query="insert into jailorsreg(jailorid,jailorname,allotedjailname,gender,address,phoneno,emailid,password,remarks,date)  values('"+jailorid+"','"+jname+"','"+ajname+"','"+gender+"','"+address+"','"+phonno+"','"+email+"','"+pwd+"','"+remarks+"','"+bdate+"' )";

String query="insert into newjail(jailid,jailname,jaillocation,district,pincode,phoneno,remarks,status,date)  values('"+jailid+"','"+jname+"','"+jlocation+"','"+district+"','"+pincode+"','"+phonno+"','"+remarks+"','"+status+"','"+bdate+"' )";


System.out.println(".....................Query Sucess...........");

st.executeUpdate(query);
System.out.println(".....................Query Executed Sucessfully...........");
%>
<jsp:forward  page="addjails12345.jsp">
	<jsp:param name="X" value="6"/>
	</jsp:forward >
<%


}
catch(Exception e)
{

System.out.println(".....................From catch Block...........");
System.out.println(e);
out.println(e);
}
%>