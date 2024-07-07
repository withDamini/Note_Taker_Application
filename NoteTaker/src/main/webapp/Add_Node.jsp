<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
 <%@include file="all_Js_CSS.jsp" %>
</head>
<body>

    <div class="container">
       <%@include file="navbar.jsp" %>
       <br>
       <h1>Please fill your Note Details..</h1>
       <br>
       
       
    <!--    form -->
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required type="text" class="form-control" id="title"  placeholder="Enter here" name="title"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required id="content" placeholder="Enter Your Text here" class="form-control" name="content" style="height:150px"></textarea>
  </div>
  
 <div class="container text-center">
  <button type="submit" class="btn btn-primary">ADD</button>
 </div> 
</form>
    
    </div>
</body>
</html>