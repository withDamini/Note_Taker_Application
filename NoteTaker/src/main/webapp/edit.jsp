<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page</title>
 <%@include file="all_Js_CSS.jsp" %>
</head>
<body>

 <div class="container">
  <%@include file="navbar.jsp" %>
       <br>
       <h1>Edit Your Note : </h1>
       <br>
       <%
       int noteId=Integer.parseInt(request.getParameter("note_id"));
       Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		
		Note note=(Note)s.get(Note.class,noteId);//return a note object of given noteId...
		
       %>
       
       <!--    form -->
    <form action="UpdateServlet" method="post">
    <input value="<%=note.getId()%>" name="note_id" type="hidden"/>
  
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required type="text" class="form-control" id="title"  placeholder="Enter here" name="title" value="<%=note.getTitle() %>"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="content">Node Content</label>
    <textarea required id="content" placeholder="Enter Your Text here" class="form-control" name="content"  style="height:150px"><%=note.getContent() %></textarea>
  </div>
  
 <div class="container text-center">
  <button type="submit" class="btn btn-success">SAVE</button>
 </div> 
</form>
 
 </div>
      
</body>
</html>