<%@page import="java.util.ArrayList,java.io.ObjectInputStream,java.io.FileInputStream"%>
<%@page import="java.io.File,com.Certificates"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Blockchain Based Certificate Verification</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
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
            <li><a href="AddOfficials.jsp">Add Verification Officials</a></li>
            <li><a href="BlockchainUpload.jsp">Upload Verified Certificates to Blockchain</a></li>
			<li><a href="SearchCertificate.jsp">Search Verified Certificates</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="hbg"><img src="images/header_images.jpg" width="915" height="286" alt="" /></div>
      				<center>

   <h2><b>Upload Certificate to Blockchain Screen</b></h2>
   
		<table border="1" align="center" width="100%">
			<tr><th>Student ID</th><th>Student Name</th><th>Contact No</th><th>Email ID</th>
			<th>Address</th><th>Details</th><th>Verified Date</th><th>Hash Code</th><th>Certificate Type</th><th><font size="" color="yellow">Image</font></th>
			</tr>
	<%
	boolean flag = false;
	String sid = request.getParameter("t1");
	String path = getServletContext().getRealPath("/")+"WEB-INF/certificate.txt";
	File tmpfile = new File(path);
	ArrayList<Certificates> list = new ArrayList<Certificates>();
	if(tmpfile.exists()) {
		ObjectInputStream oin = new ObjectInputStream(new FileInputStream(tmpfile));
		Object obj = (Object)oin.readObject();
		list = (ArrayList<Certificates>)obj;
		for(int i=0;i<list.size();i++){
			Certificates cc = list.get(i);
			if(cc.getID().equals(sid)){
				flag = true;
			%>
			<tr><td><font size="3" color="black"><%=cc.getID()%></td>
			<td><font size="3" color="black"><%=cc.getName()%></td>
			<td><font size="3" color="black"><%=cc.getContact()%></td>
			<td><font size="3" color="black"><%=cc.getEmail()%></td>
			<td><font size="3" color="black"><%=cc.getAddress()%></td>
			<td><font size="3" color="black"><%=cc.getDetails()%></td>
			<td><font size="3" color="black"><%=cc.getDate()%></td>
			<td><font size="3" color="black"><%=cc.getHashcode()%></td>
			<td><font size="3" color="black"><%=cc.getType()%></td>
			<td><img src="ViewImage.jsp?t1=<%=cc.getID()%>" height="250px" width="250px"></td>
			

<%}}} if(!flag) {%>
<tr><td><font size="3" color="black">Verification Failed</td>
<%}%>
	</table>
	</body>
</html>