<%@ page import="java.sql.*"%>
<html>
<body>
<% 
   String name=request.getParameter("Name");
   String email=request.getParameter("Email");
   String phone=request.getParameter("Phone");
   String url=request.getParameter("url");
   String notes=request.getParameter("Notes");
out.print("connected");
try
{
Class.forName("com.mysql.jdbc.Driver");
out.print("connected");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pim","root","");
out.print("connected");
String q="insert into contacts values('"+name+"','"+email+"','"+phone+"','"+url+"','"+notes+"')";
Statement st=con.createStatement();
st.executeUpdate(q);
 out.print("Update successfully");
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

