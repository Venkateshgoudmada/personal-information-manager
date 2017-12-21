<html>
<body>
<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL 
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/pim1" ,"root","");    
        PreparedStatement pst = conn.prepareStatement("Select *from register where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           //out.println("Valid login credentials");
		response.sendRedirect("task.html");        
        else
           out.println("Invalid login credentials");
		out.println("please try again");           
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
<a href ="dem.html">Login</a><br/><br/> 
</body>
</html>