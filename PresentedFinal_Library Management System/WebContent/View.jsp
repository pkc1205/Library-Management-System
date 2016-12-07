<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.krishna.Books" import="java.util.List"%>
    <?xml version = "1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- dbServlet.html -->
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
    <title>MySQL Servlet</title>
    <style type="text/css">
        body{background-color: white;}
    </style>
</head>

<body>
  <% 
     List<Books> ls=(List<Books>)request.getAttribute("ls");
   %>
    <h1>This is the MySQL Servlet</h1>
    <table style="width:100%">
  <tr>
    <th>Bookid</th>
    <th>Bookname</th> 
    <th>Author</th>
    <th>Quantity</th>
  </tr>
  <%for(Books h : ls){%>
  <tr>
    <td><%=h.getBookid() %></td>
    <td><%=h.getBookname() %></td> 
    <td><%=h.getAuthor() %></td>
    <td><%=h.getQuantity() %></td>
  </tr>  <%} %>
</table>
    <hr>
  
</body>
</html>