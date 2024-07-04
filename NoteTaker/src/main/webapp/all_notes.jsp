<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all notes</title>
 <%@include file="all_Js_CSS.jsp" %>
</head>
<body>
  <div class="container">
       <%@include file="navbar.jsp" %>
       <br>
       <h1>All NOTES : </h1>
       
       <div class="row">
         <div class="col-12 ">
         
           <%
               Session s=FactoryProvider.getFactory().openSession();
               Query q=  s.createQuery("from Note ");
               List<Note> list= q.list();
               for(Note note:list){
            %>	
            
          <div class="card mt-3" >
        
           <div class="card-body">
           <img class="card-img-top"  style="max-width:100px" src="image/notepad.png" alt="card image cap">
              <h5 class="card-title"><%=note.getTitle() %></h5>
            <p class="card-text"><%=note.getContent() %></p>
            <p class="text-primary"><b><%= note.getAddedDate() %></b></p>
            <div class="container text-right ">
                  <a  href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
                 <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
         
            </div>
          
         </div>
       </div>  
             
            <% 
               }
               s.close();
            %>

              
    
         
         </div>
       
       </div>
       
    
    </div>   
       

</body>
</html>