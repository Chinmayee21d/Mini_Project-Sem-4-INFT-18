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
      <h1>Shipping Details</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="shipping_details_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
  <tr>
    <td width="56"><div align="center"><strong>SI.NO</strong></div></td>
    <td width="75"><div align="center"><strong>User</strong></div></td>
    <td width="71"><div align="center"><strong>Address</strong></div></td>
    <td width="111"><div align="center"><strong>Landmark</strong></div></td>
    <td width="123"><div align="center"><strong>Pincode</strong></div></td>
	<td width="133"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("Select * from shipping_details s,user_details d where s.u_id=d.u_id");
while(rs.next())
{
sin++;
int id=rs.getInt("sp_id");
%>
  <tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+" "+rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("address")%></div></td>
    <td><div align="center"><%=rs.getString("landmark")%></div></td>
	<td><div align="center"><%=rs.getString("pincode")%></div></td>
    <td><div align="center"><a href="shipping_details_edit.jsp?id=<%=id%>" class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a onClick="return confirm('Are you sure')" href="shipping_details_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a> </div></td>
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