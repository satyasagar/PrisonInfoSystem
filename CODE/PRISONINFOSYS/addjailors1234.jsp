<%@page import="java.sql.*,com.pis.ConnectionPool"%>
<%@ page session="true" %>

<%!

Connection con=null;
Statement st=null;


%>


<%

System.out.println(".....................From addjailors1234.jsp...........");


String jailorid1=request.getParameter("jailorid");
System.out.println(jailorid1);

int jailorid=Integer.parseInt(request.getParameter("jailorid"));
System.out.println(jailorid);

String jname=request.getParameter("jname");
System.out.println(jname);



String ajname=request.getParameter("ajname");
System.out.println(ajname);


String gender=request.getParameter("gender");
System.out.println(gender);

String bdate=request.getParameter("bdate");
System.out.println(bdate);





String address=request.getParameter("address");
System.out.println(address);


String phonno=request.getParameter("phonno");
System.out.println(phonno);

String email=request.getParameter("email");
System.out.println(email);

String pwd=request.getParameter("pwd");
System.out.println(pwd);

String remarks=request.getParameter("remarks");
System.out.println(remarks);

//String status="Pending";
//String status="Regected";
String status="Accepted";
String typeofuser="jailor";



System.out.println(".....................From addjailors1234.jsp...........");
%>

<%

try
{

con=com.pis.ConnectionPool.getConnection();
System.out.println(".....................Connection Sucess...........");

st=con.createStatement();
System.out.println(".....................St Sucess...........");

String query="insert into jailorsreg(jailorid,jailorname,allotedjailname,gender,address,phoneno,emailid,password,remarks,date)  values('"+jailorid+"','"+jname+"','"+ajname+"','"+gender+"','"+address+"','"+phonno+"','"+email+"','"+pwd+"','"+remarks+"','"+bdate+"' )";
System.out.println(".....................Query Sucess...........");

String query1="update newjail set status='"+status+"' where jailname='"+ajname+"'";
System.out.println(".....................Query1 Sucess...........");

String query2="insert into login(userid,password,role) values('"+jailorid+"','"+pwd+"','"+typeofuser+"')";
System.out.println(".....................Query2 Sucess...........");

st.executeUpdate(query);
System.out.println(".....................Query Executed Sucessfully...........");


st.executeUpdate(query1);
System.out.println(".....................Query1 Executed Sucessfully...........");

st.executeUpdate(query2);
System.out.println(".....................Query2 Executed Sucessfully...........");

%>
<jsp:forward  page="addjailors12345.jsp">
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