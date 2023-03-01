<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("add")'>
<%
String v1=request.getParameter("eid");
String v2=request.getParameter("firstname");
String v3=request.getParameter("lastname");
String v4=request.getParameter("department");
String v5=request.getParameter("salary");
String msg="";
if(v1==null) {
	v1=v2=v3=v4=v5="";
}
else {
	msg="Employee id "+v1+" already exists..";
}
%>
<div align='center'>
	<h3 style='color:red'><%=msg %></h3>
</div>
<div class='container'>
	<div class='card col-md-10 mx-auto'>
		<div class='card-body'>
			<form action='save-employee.jsp' method='post'>
				<div class='row'>
					<div class='form-group col-md-10 tdp'>
						<label class='la' for='eid'>Enter employee id</label> <span>*</span>
						<input type='text' id='eid' name='eid' value='<%=v1 %>' class='form-control'>
						<span id='m1'></span>
					</div>
					<div class='form-group col-md-10 tdp'>
						<label class='la' for='firstname'>Enter first name</label> <span>*</span>
						<input type='text' id='firstname' name='firstname' value='<%=v2 %>' class='form-control'>
						<span id='m2'></span>
					</div>
					<div class='form-group col-md-10 tdp'>
						<label class='la' for='lastname'>Enter last name</label> <span>*</span>
						<input type='text' id='lastname' name='lastname' value='<%=v3 %>' class='form-control'>
						<span id='m3'></span>
					</div>
					<div class='form-group col-md-10 tdp'>
						<label class='la' for='department'>Enter department</label> <span>*</span>
						<input type='text' id='department' name='department' value='<%=v4 %>' class='form-control'>
						<span id='m4'></span>
					</div>
					<div class='form-group col-md-10 tdp'>
						<label class='la' for='salary'>Enter salary</label> <span>*</span>
						<input type='text' id='salary' name='salary' value='<%=v5 %>' class='form-control'>
						<span id='m5'></span>
					</div>
					<div class='form-group col-md-10 tdp'>
						<button onclick='return validate()' class='btn btn-primary'>Save Record</button>
					</div>
				</div>
			</form>
			<h5><span>*</span> mandatory field</h5>
		</div>
	</div>
</div>
</body>