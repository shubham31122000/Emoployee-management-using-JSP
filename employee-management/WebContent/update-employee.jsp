<%@page import="java.sql.*"%>
<jsp:include page='edit.jsp' />
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
ps.setString(1,request.getParameter("firstname"));
ps.setString(2,request.getParameter("lastname"));
ps.setString(3,request.getParameter("department"));
ps.setString(4,request.getParameter("salary"));
ps.setString(5,request.getParameter("eid"));
ps.executeUpdate();
%>
<div class='dvv' style='color:green'>
	<h2>Employee record has been updated successfully...</h2>
</div>