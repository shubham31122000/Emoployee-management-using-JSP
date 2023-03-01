<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("delete")'>
<%
String str=request.getParameter("eid");
if(str==null) {
	str="";
}
%>
<form action='confirm-delete.jsp'>
	<table class='ta'>
		<tr>
			<td class='laa tdp1'>Enter employee id</td>
			<td class='tdp1'><input class='tb' type='text' name='eid' value='<%=str%>'></td>
			<td class='tdp1'><button class='bt'>Delete Employee</button></td>
		</tr>
	</table>
</form>
</body>