function activeLink(link) {
	document.getElementById(link).style.color="red";
}

function validate() {
	clearAll();
	var st=true;
	var v1=document.getElementById('eid').value;
	var v2=document.getElementById('firstname').value;
	var v3=document.getElementById('lastname').value;
	var v4=document.getElementById('department').value;
	var v5=document.getElementById('salary').value;
	if(v1=="") {
		document.getElementById('m1').innerHTML="Employee id is required";
		st=false;
	}
	if(v2=="") {
		document.getElementById('m2').innerHTML="Firstname is required";
		st=false;
	}
	if(v3=="") {
		document.getElementById('m3').innerHTML="Lastname is required";
		st=false;
	}
	if(v4=="") {
		document.getElementById('m4').innerHTML="Department is required";
		st=false;
	}
	if(v5=="") {
		document.getElementById('m5').innerHTML="Salary is required";
		st=false;
	}
	return st;
}

function clearAll() {
	document.getElementById('m1').innerHTML="";
	document.getElementById('m2').innerHTML="";
	document.getElementById('m3').innerHTML="";
	document.getElementById('m4').innerHTML="";
	document.getElementById('m5').innerHTML="";
}