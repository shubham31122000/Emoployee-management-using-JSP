<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("edit")'>
<%
String str=request.getParameter("eid");
if(str==null) {
	str="";
}
%>
<form action='edit-employee.jsp'>
	<table class='ta'>
		<tr>
			<td class='laa tdp1'>Enter employee id</td>
			<td class='tdp1'><input class='tb' type='text' name='eid' value='<%=str%>'></td>
			<td class='tdp1'><button class='bt'>Get Employee</button></td>
		</tr>
	</table>
</form>
</body>