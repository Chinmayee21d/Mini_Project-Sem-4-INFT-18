<%@page import="java.io.*"%>

<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String s1;
s1=request.getParameter("photo");
 
 String id=session.getAttribute("id").toString();

 String saveFile="";
    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while(totalBytesRead < formDataLength){
    byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    totalBytesRead += byteRead;
   }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    File ff = new File(getServletContext().getRealPath("/")+"RRInfotech/uploads/"+saveFile);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
	
	String pid=session.getAttribute("pid").toString();
	String pt=session.getAttribute("pt").toString();
	int pht=Integer.parseInt(pt);
	if(pht==1)
	{
	int k=s.stm.executeUpdate("update product_photos set pr_photo1='"+saveFile+"' where pp_id='"+pid+"'");
   	}
	else if(pht==2)
	{
	int k=s.stm.executeUpdate("update product_photos set pr_photo2='"+saveFile+"' where pp_id='"+pid+"'");
   	}
	else if(pht==3)
	{
	int k=s.stm.executeUpdate("update product_photos set pr_photo3='"+saveFile+"' where pp_id='"+pid+"'");
   	}
	else
	{
		out.println("<script>alert('Something went-wrong');document.location='product_details_view.jsp';</script>");
	}
	
    fileOut.close();
	session.removeAttribute("pid");
	session.removeAttribute("pt");
  }

%>

<script>
alert("Photo Uploaded Successfully.");
document.location="product_photos_view.jsp?id=<%=id%>";
</script>