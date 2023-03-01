<%@page import="java.sql.*"%>
<jsp:include page='delete.jsp' />
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
ps.setString(1,request.getParameter("eid"));
ps.executeUpdate();
%>
<div class='dvv' style='color:green'>
	<h2>Employee record has been deleted successfully...</h2>
</div>