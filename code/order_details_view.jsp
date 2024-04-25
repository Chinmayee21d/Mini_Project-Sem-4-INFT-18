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
      <h1>Order Details</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="order_details_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
  <tr>
    <td width="92"><div align="center"><strong>SI NO </strong></div></td>
    <td width="112"><div align="center"><strong>User </strong></div></td>
    <td width="147"><div align="center"><strong>Product</strong></div></td>
    <td width="112"><div align="center"><strong>Quantity</strong></div></td>
    <td width="159"><div align="center"><strong>Shipping Address</strong></div></td>
    <td width="147"><div align="center"><strong>Order Date</strong></div></td>
    <td width="157"><div align="center"><strong>Order Time </strong></div></td>
    <td width="95"><div align="center"><strong>Status</strong></div></td>
    <td width="140"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("select * from order_details s, user_details d,product_details r,shipping_details q where s.u_id=d.u_id and s.pr_id=r.pr_id and s.u_id=q.u_id");
while(rs.next())
{
sin++;
int id=rs.getInt("o_id");				
%>
  <tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+"  "+rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    <td><div align="center"><%=rs.getString("quantity")%></div></td>
    <td><div align="center"><%=rs.getString("address")%></div></td>
    <td><div align="center"><%=rs.getString("o_date")%></div></td>
    <td><div align="center"><%=rs.getString("o_time")%></div></td>
    <td><div align="center"><%=rs.getString("status")%></div></td>
    <td><div align="center"><a href="order_details_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a onClick="return confirm('Are you sure')" href="order_details_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
  </tr>
<%
}
%>
</table>
</tbody>
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
