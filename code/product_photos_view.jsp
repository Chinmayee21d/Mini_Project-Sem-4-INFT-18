<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>
<!-- Session Validator -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Product Photos</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
             <h5 class="card-title"><a class="btn btn-primary" href="product_details_view.jsp"><i class="bi bi-arrow-left"></i> Back</a></h5> 
		   </div>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
  <tr>
    <td width="60"><div align="center"><strong>SL No. </strong></div></td>
    <td width="106"><div align="center"><strong>Product Name</strong></div></td>
    <td width="105"><div align="center"><strong>Product Photo-1</strong></div></td>
    <td width="129"><div align="center"><strong>Product Photo-2 </strong></div></td>
    <td width="124"><div align="center"><strong>Product Photo-3</strong></div></td>
    <td width="96"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
  <title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
session.removeAttribute("id");
int sin=0;
String pid=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("Select * from product_photos s,product_details d where s.pr_id=d.pr_id and d.pr_id='"+pid+"'");
while(rs.next())
{
sin++;
int id=rs.getInt("pp_id");
%>
<tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    <td><div align="center"><img src="../uploads/<%=rs.getString("pr_photo1")%>" width="100px" height="100px"/></br><a href="product_select_photo.jsp?pid=<%=id%>&pt=1&id=<%=pid%>">Change Photo</a></div></td>
    <td><div align="center"><img src="../uploads/<%=rs.getString("pr_photo2")%>" width="100px" height="100px"/></br><a href="product_select_photo.jsp?pid=<%=id%>&pt=2&id=<%=pid%>">Change Photo</a></div></td>
	<td><div align="center"><img src="../uploads/<%=rs.getString("pr_photo3")%>" width="100px" height="100px"/></br><a href="product_select_photo.jsp?pid=<%=id%>&pt=3&id=<%=pid%>">Change Photo</a></div></td>
    <td><div align="center"><!-- <a href="product_photos_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> --> <a href="product_photos_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a> </div></td>
  </tr>
  </tbody>
 <%
 }
 %>

</table>
</div>

     </div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Session Validator -->
<%
}
else
{
out.println("<script>alert('Your Session Expired');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->