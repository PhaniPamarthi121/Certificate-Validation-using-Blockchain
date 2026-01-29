<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Blockchain Based Certificate Verification</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please enter student id");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please enter student name");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t3.focus();
	return false;
	}
	if(isNaN(formObj.t3.value)){
		alert("Contact no  must be numeric");
		formObj.t3.focus();
		return false;
	}
	if(formObj.t3.value.length != 10){
		alert("Contact number must be 10 digits long");
		formObj.t3.focus();
		return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter mail id");
	formObj.t4.focus();
	return false;
	}
	var filter = /^([a-zA-Z0-9_\.\-])+\@([a-z]+\.)+(com)+$/;
    if (!filter.test(formObj.t4.value)) {
		window.alert('Please enter valid email address');
		formObj.t4.focus();
		return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t5.focus();
	return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter Certificate Details");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Upload Image");
	formObj.t7.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
	
</head>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><span>Blockchain Model To Track & Verify Official Certificates</span><small></small></h1>
      </div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="menu_nav">
         <ul>
            <li><a href="AddCertificate.jsp">Add New Verified Certificate</a></li>
            <li><a href="ViewCertificates.jsp">View Certificates</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
      				<center>
<form name="f1" method="post" action="AddCertificate" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
   <h2><b>Add Verified Certificate Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="30%" >

<tr><td><b>Student&nbsp;ID</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="15"/></td></tr>

<tr><td><b>Student&nbsp;Name</b></td><td><input type="text" name="t2" style="font-family: Comic Sans MS" size="25"/></td></tr>

<tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t3" style="font-family: Comic Sans MS" size="15"/></td></tr>

<tr><td><b>Email&nbsp;ID</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size="30"/></td></tr>

<tr><td><b>Address</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size="40"/></td></tr>

<tr><td><b>Certificate&nbsp;Details</b></td><td><input type="text" name="t6" style="font-family: Comic Sans MS" size="60"/></td></tr>



          <tr><td><b>Upload&nbsp;Certificate</b></td><td><input type="file" name="t7"/></td></tr>
			<tr><td></td><td><input type="submit" value="Submit"></td>
			</table>
				</div>	
					
				</div>
				
					
	</body>
</html>