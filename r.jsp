<html>
<body>
<%@ page import="java.sql.* "%>
<% 
   String uname=request.getParameter("usernamesignup");
   String email=request.getParameter("emailsignup");
   String pswd=request.getParameter("passwordsignup");
   String cpswd=request.getParameter("passwordsignup_confirm");
//out.print(connected);
try
{
Class.forName("com.mysql.jdbc.Driver");
out.print("connected");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pim1","root","");
if(con==null)
out.print("connected");

PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?)");
ps.setString(1,uname);
ps.setString(2,email);
ps.setString(3,pswd);
ps.setString(4,cpswd);
int i=ps.executeUpdate();
//out.print(i);
 out.print("registered successfully");
 //st.close();
//response.sendRedirect("dem.html#toregister");
}
catch(Exception e)
{
e.printStackTrace();
}

%>
<a href ="dem.html">Login</a><br/><br/>
</body>
</html>
