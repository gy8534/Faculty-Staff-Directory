<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Staff Directory</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<% 
		String s1 = request.getParameter("col"); 
		String s2 = request.getParameter("dep");
		
  try
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd", "root", "");
	   Statement st = con.createStatement();
	   ResultSet rs;
       String query="select * from "+s1+"_"+s2;
       rs = st.executeQuery(query);
   %>
	
		<div class='container'>
		<h1>Department of <%=s2.toUpperCase() %></h1>  
	
   <% while(rs.next()){ %>
    
  <div class="py-3">
    <div class="card">
      <div class="row ">
        <div class="col-md-4">
            <img src="<%=rs.getString("pic")%>" class="w-100">
          </div>
          <div class="col-md-8 px-3">
            <div class="card-block px-3">
              <h4 class="card-title">Name: <%=rs.getString("name") %></h4>
              <p class="card-text">Faculty ID: <%=rs.getString("fc_id") %></p>
              <p class="card-text">Designation: <%=rs.getString("des") %></p>
              <p class="card-text">Date of Joining: <%=rs.getDate("doj") %></p>
              <p class="card-text">Qualification: <%=rs.getString("quali") %></p>
		      <p class="card-text">specialization: <%=rs.getString("speci") %></p>
              <a href="#" class="btn btn-primary">Read More</a>
            </div>
          </div>

        </div>
      </div>
    </div>
    <%} %>
</div>

           
   <%
        rs.close();
        st.close();
        con.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</body>
</html>