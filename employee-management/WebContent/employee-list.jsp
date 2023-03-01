<%@page import="java.sql.*" %>
<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("list")'>
<div class="container">
	<div class="card">
		<div class="card-body">
			<div class="table">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Employee id</th>
							<th>First name</th>
							<th>Last name</th>
							<th>Department</th>
							<th>Salary</th>
						</tr>
					</thead>
					<tbody>
						<%
						Statement st=(Statement)application.getAttribute("select");
						ResultSet rst=st.executeQuery("select * from employeeinfo");
						while(rst.next()) {
							%>
							<tr>
								<td><%=rst.getString(1) %></td>
								<td><%=rst.getString(2) %></td>
								<td><%=rst.getString(3) %></td>
								<td><%=rst.getString(4) %></td>
								<td><%=rst.getString(5) %></td>
							</tr>
							<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
