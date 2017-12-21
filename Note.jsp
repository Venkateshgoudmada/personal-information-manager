<%@ page import="java.sql.*"%>
<html>
<body>
<% 
   String title=request.getParameter("Title");
   String body=request.getParameter("Body");
   
//out.print("connected");
try
{
Class.forName("com.mysql.jdbc.Driver");
//out.print("connected");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pim","root","");
out.print("connected");
String q="insert into signup values('"+title+"','"+body+"')";
out.print(q);
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

