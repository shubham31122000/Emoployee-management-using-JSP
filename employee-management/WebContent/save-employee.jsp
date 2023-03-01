<%@page import="java.sql.*"%>
<%
String eid=request.getParameter("eid");
PreparedStatement ps1=(PreparedStatement)application.getAttribute("search");
ps1.setString(1,eid);
ResultSet rst=ps1.executeQuery();
if(rst.next()) {
	%>
	<jsp:include page='add-employee.jsp'/>
	<%
	return;
}
PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
ps.setString(1,eid);
ps.setString(2,request.getParameter("firstname"));
ps.setString(3,request.getParameter("lastname"));
ps.setString(4,request.getParameter("department"));
ps.setString(5,request.getParameter("salary"));
ps.executeUpdate();
%>
<%@ include file="nav-bar.jsp" %>
<div class='dv' style='color:green'>
	<h2>Employee record has been saved successfully...</h2>
</div>