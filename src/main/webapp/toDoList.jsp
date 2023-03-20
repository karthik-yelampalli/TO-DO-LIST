<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="toDoList.jsp" align="center">
	 	<label>Add new item : </label> <input type="text" name="newToDoItem">
	 	<input type="submit" value="SUBMIT">
	</form>
	
	
	<%
		List<String> items = (List<String>) session.getAttribute("myToDoList");
		
		if(items==null){
			items = new ArrayList<String>();
			session.setAttribute("myToDoList",items);
		}
		
		String theItem = request.getParameter("newToDoItem");
		if(theItem!=null && theItem!=""){
			items.add(theItem);
		}
		
	%>
	<hr>
	<br>
	<br>
	<b>To Do List :</b>
	<br>
	<br>
	<ol>    
		<%
			for(String y : items){
				out.println("<li>"+y+"</li>");
			}
		%>
	</ol>
	
	
</body>
</html>