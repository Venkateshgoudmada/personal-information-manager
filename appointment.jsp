<%@ page import="java.sql.*"%>
<html>
<body>
<% 
   String fname=request.getParameter("FirstName");
   String lname=request.getParameter("LastName");
   String phoneno=request.getParameter("PhoneNumber");
   String email=request.getParameter("Email");
   String address=request.getParameter("Address");
//out.print("connected");
try
{
Class.forName("com.mysql.jdbc.Driver");
//out.print("connected");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pim","root","");
out.print("connected");
String q="insert into signup values('"+fname+"','"+lname+"','"+phoneno+"','"+email+"','"+address+"')";
Statement st=con.createStatement();
st.executeUpdate(q);
 out.print("registered successfully");
 //st.close();
//response.sendRedirect("index.html");
}
catch(Exception e)
{
e.printStackTrace();
}

%>
</body>
</html>

