<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Receptionist" %>

<%List name= (List)request.getAttribute("data");%>


 
<center>
<html>

<head>
<style type="text/css">
.menu{
	font-family:"Lucida Console";
	text-align:center;
	font-size:x-large;
	background-color: white;
	Border-color:#34aeeb;
	Border-style:groove;
	Border-width:Medium;
	width:100%;
	overflow:auto;
	text-align:center;
}
.menu a{
	float:left;
	padding:12px;
	color:#3483eb;
	text-decoration:none;
	font-size:17px;
	width:10%;
	text-align:center;
}
.menu a:hover{
	background-color:#34aeeb;
	text-align:center;
}
.menu a.active{
	background-color:white;
	text-align:center;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #63b2ff;}

body {
  font-family: "Times New Roman", Times, serif;
  margin: 0;
}

/* Style the header */
.header {
  padding: 50px;
  text-align: center;
  background: #FFFFFF;
  color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.navbar {
  overflow: hidden; /* Hide overflow */
  background-color: #002366; /* Dark background color */
}

/* Style the navigation bar links */
.navbar a {
  float: right; /* Make sure that the links stay side-by-side */
  display: block; /*Change the display to block, for responsive reasons (see below) */
  color: white; /* White text color */
  text-align: center; /* Center the text */
  padding: 14px 20px; /* Add some padding */
  text-decoration: none; /* Remove underline */
}
</style>
<div class="navbar">
<a href="http://localhost:8989/HMS/view/adminhome.jsp">Back</a>
</div>
<body>

<center>
<table border=1>
<tr>
<th><b>Receptionist Name</b></th>
<th><b>emailid</b></th>
<th><b>phonenumber</b></th>



</tr>
<%List<Receptionist> l=(List<Receptionist>)request.getAttribute("data");
for(Receptionist p:l){%>
<tr>
<td><b><%= p.getName() %></b></td>
<td><b><%= p.getEmail() %></b></td>
<td><b><%= p.getPhnnumber() %></b></td>





</tr>
<%} %>
</table>
</center>
</body>
</head>
</html>