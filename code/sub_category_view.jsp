1st line in form and view


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
      <h1>Sub Category</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="sub_category_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
  <tr>
    <td width="41"><div align="center"><strong>SI.No</strong></div></td>
    <td width="105"><div align="center"><strong>Category Name </strong></div></td>
    <td width="153"><div align="center"><strong>Sub Category Name </strong></div></td>
    <td width="235"><div align="center"><strong>Sub Category Description </strong></div></td>
	<td width="235"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
  <title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("Select * from sub_category s,category d where s.ct_id=d.ct_id");
while(rs.next())
{
sin++;
int id=rs.getInt("sct_id");
%>
<tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("ct_name")%></div></td>
    <td><div align="center"><%=rs.getString("sct_name")%></div></td>
    <td><div align="center"><%=rs.getString("sct_description")%></div></td>
	<td><div align="center"><a href="sub_category_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> | <a href="sub_category_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
	
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
