<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("Submit");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
String b=request.getParameter("scid");
String c=request.getParameter("pn");
String d=request.getParameter("pd");
String e=request.getParameter("pp");
String f=request.getParameter("ps");
ResultSet rs=s.stm.executeQuery("Select * from product_details where pr_name='"+c+"'");
if(rs.next())
{
out.println("<script>alert('Product Already Exist');history.back();</script>");
}
else
{   
    int z=s.stm.executeUpdate("insert into product_details values(null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
	
	ResultSet rs1=s.stm.executeQuery("select max(pr_id) as mxid from product_details");
    rs1.next();
	int pid=rs1.getInt("mxid");
		
		if(pid==0)
		{
			int z1=s.stm.executeUpdate("insert into product_photos values(null,'1','noimg.png','noimg.png','noimg.png')");
		}
		else
		{
		    int z1=s.stm.executeUpdate("insert into product_photos values(null,'"+pid+"','noimg.png','noimg.png','noimg.png')");
		}
			out.println("<script>alert('Data Added Successfully..!');document.location='product_details_view.jsp'</script>");

}
}
%>