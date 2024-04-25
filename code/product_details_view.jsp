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
      <h1>Product Details</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="product_details_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">
  <tr>
    <td width="119"><div align="center"><strong>SL No. </strong></div></td>
    <td width="172"><div align="center"><strong>Sub Category </strong></div></td>
    <td width="166"><div align="center"><strong>Product Name </strong></div></td>
    <td width="179"><div align="center"><strong>Product Description </strong></div></td>
    <td width="116"><div align="center"><strong>Product Price</strong></div></td>
    <td width="114"><div align="center"><strong>Product Status </strong></div></td>
    <td width="100"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("Select * from product_details s, sub_category d where s.sct_id=d.sct_id");
while(rs.next())
{
sin++;
int id=rs.getInt("pr_id");
%>
<tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("sct_name")%></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    <td><div align="center"><%=rs.getString("pr_description")%></div></td>
    <td><div align="center"><%=rs.getString("pr_aprice")%></div></td>
    <td><div align="center"><%=rs.getString("pr_status")%></div></td>
    <td><div align="center"><a href="product_photos_view.jsp?id=<%=id%>"class="btn btn-info" title="View Photo"><i class="bi bi-eye"></i></a> <a href="product_details_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a onClick="return confirm('Are you Sure')" href="product_details_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a> </div></td>
	
  </tr>
  <%
 }
 %>
</tbody>
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
