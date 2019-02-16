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

  <h3 align='center'>Faculty Staff Directory</h3>
  <hr>
<div class="container">
  <ul id="myTabs" class="nav nav-pills nav-justified" role="tablist" data-tabs="tabs">
    <li class="active"><a href="#f1" data-toggle="tab">Search By</a></li>
    <li><a href="#f2" data-toggle="tab">Search Manually</a></li>
  </ul>
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane fade in active" id="f1">
    	<h3>Search By</h3>
    	<form action="searchby.jsp" method='GET'>
		  <div class="form-group">
		    <label for="type">Name or ID</label>
		    <select name='by'>
		    	<option value='name'>Name</option>
		    	<option value='id'>ID</option>
		    </select>
		    </div>
		  <button type="submit" class="btn btn-default">Submit</button>
		</form>
    </div>
    
    <div role="tabpanel" class="tab-pane fade" id="f2">
    <h3>Search Manually</h3>
    	<form action="searchman1.jsp" method='GET'>
		  <div class="form-group">
		    <label for="email">Select College</label>
		    <select name='man'>
		    	<option value='psit'>PSIT</option>
		    </select>
		  </div>
		  <button type="submit" class="btn btn-default">Submit</button>
		</form>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

  

</body>

</html>
