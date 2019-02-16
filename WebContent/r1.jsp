<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Staff Directory</title>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
</head>
<body>
	<h2>Faculty Details</h2>
	<% 
		Class.forName("com.mysql.jdbc.Driver");
	   	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd", "root", "");
		String s1 = request.getParameter("type"); 
		String s2 = request.getParameter(s1);

		 try
		   {
			   Statement st1 = con.createStatement();
			   ResultSet rs1;
		       String query1="select * from psit_cse where "+s1+"="+"'"+s2+"'"+" union "+"select * from psit_it where "+s1+"="+"'"+s2+"'";
		       rs1 = st1.executeQuery(query1);
		   %>
			
				<div class='container'>  
			
		   <% while(rs1.next()){ %>
		    
		  <div class="py-3">
		    <div class="card">
		      <div class="row ">
		        <div class="col-md-4">
		            <img src="<%=rs1.getString("pic")%>" class="w-100">
		          </div>
		          <div class="col-md-8 px-3">
		            <div class="card-block px-3">
		              <h4 class="card-title">Name: <%=rs1.getString("name") %></h4>
		              <p class="card-text">Faculty ID: <%=rs1.getString("fc_id") %></p>
		              <p class="card-text">Designation<%=rs1.getString("des") %></p>
		              <p class="card-text">Date of Joining: <%=rs1.getDate("doj") %></p>
		              <p class="card-text">Qualification: <%=rs1.getString("quali") %></p>
		              <p class="card-text">specialization: <%=rs1.getString("speci") %></p>
		              <p class="card-text">Department: <% 
		              									String d = "";
		              									if (rs1.getString("dep").equals("c")){
		              										d="Computer Science and Engineering";
		              									} else if (rs1.getString("dep").equals("en")){
		              										d="Electrical Engineering";
		              									} else {
		              										d = "Information Technology";
		              									}
		              									%>
		              									<%= d%>
		              									
		              									</p>
		              <a href="#" class="btn btn-primary">Read More</a>
		            </div>
		          </div>

		        </div>
		      </div>
		    </div>
		    <%} %>
		</div>

		           
		   <%
		        rs1.close();
		        st1.close();
		        con.close();
		   }
		   catch(Exception e)
		   {
		        e.printStackTrace();
		   }
		   %>
		   
		   
		 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>   
</body>
</html>