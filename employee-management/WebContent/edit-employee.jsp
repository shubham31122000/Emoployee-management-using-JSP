<%@page import="java.sql.*"%>
<jsp:include page='edit.jsp' />
<%
String eid=request.getParameter("eid");
PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
ps.setString(1,eid);
ResultSet rst=ps.executeQuery();
if(rst.next()) {
	%>
	<form action='update-employee.jsp' method='post'>
		<table border="1" class='taa'>
			<tr bgcolor='orange'>
				<td colspan='2' align='center'>
					<label style='color:white;font-weight:bold;font-size:25px'>Employee Details</label>
				</td>
			</tr>
			<tr>
				<th align='left'>Employee Id</th>
				<td><input type='text' value='<%=rst.getString(1)%>' class='tb' name='eid' readonly="readonly"></td>
			</tr>
			<tr>
				<th align='left'>Employee First Name</th>
				<td><input type='text' value='<%=rst.getString(2)%>' class='tb' name='firstname'></td>
			</tr>
			<tr>
				<th align='left'>Employee Last Name</th>
				<td><input type='text' value='<%=rst.getString(3)%>' class='tb' name='lastname'></td>
			</tr>
			<tr>
				<th align='left'>Employee Department</th>
				<td><input type='text' value='<%=rst.getString(4)%>' class='tb' name='department'></td>
			</tr>
			<tr>
				<th align='left'>Employee Salary</th>
				<td><input type='text' value='<%=rst.getString(5)%>' class='tb' name='salary'></td>
			</tr>
			<tr>
				<td colspan='2' align='center'><button style='margin-top:20px' class='bt'>Update Record</button></td>
			</tr>
		</table>
	</form>
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
