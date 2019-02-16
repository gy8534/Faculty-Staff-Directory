<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Faculty Staff Directory</title>
  
  
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>

  
  
</head>

<body>
<%
String s = request.getParameter("by");
if (s.equals("id")){
	s = "fc_"+s;
}
%>
  <h1 align='center'>Faculty Staff Directory</h1>
	<div class="container">
	  <ul id="myTabs" class="nav nav-pills nav-justified" role="tablist" data-tabs="tabs">
	    <li class="active"><a href="#f1" data-toggle="tab">Enter <%=s %></a></li>
	  </ul>
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane fade in active" id="f1">
	      <h1></h1>
	      <form action="r1.jsp" method='GET'>
	       <div class="form-group">
	       <input type='hidden' name='type' value='<%=s %>' > 
	        <input type='text' name='<%=s%>'>
	          </div>
	        <button type="submit" class="btn btn-default">Search</button>
	    </form>
	    </div>
	  </div>
	</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

  

</body>

</html>
