<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List, com.example.Beverage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beverage Bar</title>
</head>
<body>
<h2>Beverage Bar Menu</h2>
<ul>
<%
@SuppressWarnings("unchecked")
List<Beverage> beverages = (List<Beverage>) request.getAttribute("beverages");
for (Beverage b : beverages) {
	out.println("<li>" + b.getName() + "</li>");
}
%>
</ul>

</body>
</html>