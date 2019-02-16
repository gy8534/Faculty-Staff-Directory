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
<% String s = request.getParameter("man"); %>
  <h1 align='center'>Faculty Staff Directory</h1>
<div class="container">
  <ul id="myTabs" class="nav nav-pills nav-justified" role="tablist" data-tabs="tabs">
    <li class="active"><a href="#f1" data-toggle="tab">Select department from  <%= s %></a></li>
  </ul>
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane fade in active" id="f1">
      <h1></h1>
      <form action="r2.jsp">
      <input type='hidden' name='col' value='<%=s %>' >
       <% if (s.equals("psit")) {%>
       <div class="form-group"> 
        <select name="dep" id="dep">
            <option value=cse>CSE</option>
            <option value="it">IT</option>
            <option value="en">EN</option>
        </select>
        </div>
        <%} %>
        <button type="submit" class="btn btn-default">Search</button>
    </form>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

  

</body>

</html>
