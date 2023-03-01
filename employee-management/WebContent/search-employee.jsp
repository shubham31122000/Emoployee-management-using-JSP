<%@page import="java.sql.*"%>
<jsp:include page='search.jsp' />
<%
String eid=request.getParameter("eid");
PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
ps.setString(1,eid);
ResultSet rst=ps.executeQuery();
if(rst.next()) {
	%>
	<table border="1" class='taa'>
		<tr bgcolor='orange'>
			<td colspan='2' align='center'>
				<label style='color:white;font-weight:bold;font-size:23px'>Employee Details</label>
			</td>
		</tr>
		<tr>
			<th align='left'>Employee Id</th>
			<td><%=rst.getString(1)%></td>
		</tr>
		<tr>
			<th align='left'>Employee First Name</th>
			<td><%=rst.getString(2)%></td>
		</tr>
		<tr>
			<th align='left'>Employee Last Name</th>
			<td><%=rst.getString(3)%></td>
		</tr>
		<tr>
			<th align='left'>Employee Department</th>
			<td><%=rst.getString(4)%></td>
		</tr>
		<tr>
			<th align='left'>Employee Salary</th>
			<td><%=rst.getString(5)%></td>
		</tr>
	</table>
	<%
}
else {
	%>
	<div class='dvv'>
		<h2>Employee with id <%=eid%> not found..</h2>
	</div>
	<%
}
%>
