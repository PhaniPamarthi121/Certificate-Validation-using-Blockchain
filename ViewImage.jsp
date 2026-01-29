<%@page import="java.util.ArrayList,java.io.ObjectInputStream,java.io.FileInputStream"%>
<%@page import="java.io.File,com.Certificates"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>
<%!
byte b[];
%>
<%
try {
String name = request.getParameter("t1").toString();
String path = getServletContext().getRealPath("/")+"WEB-INF/certificate.txt";
File tmpfile = new File(path);
ArrayList<Certificates> list = new ArrayList<Certificates>();
if(tmpfile.exists()) {
	ObjectInputStream oin = new ObjectInputStream(new FileInputStream(tmpfile));
	Object obj = (Object)oin.readObject();
	list = (ArrayList<Certificates>)obj;
	for(int i=0;i<list.size();i++){
		Certificates cc = list.get(i);
		if(cc.getID().equals(name)){
			b = cc.getImage();
			break;
		}
	}
}
response.setContentType("image/jpg");
java.io.OutputStream os=response.getOutputStream();
os.write(b);
os.flush();
os.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
	
%>
</body>
</html>
	
	
	