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
      <h1>User Details</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="user_details_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
  <tr>
    <td width="64"><div align="center"><strong>SI.NO</strong></div></td>
	  <td width="55"><div align="center"><strong>Photo</strong></div></td>
    <td width="138"><div align="center"><strong>First Name </strong></div></td>
    <td width="103"><div align="center"><strong>Last Name</strong></div></td>
    <td width="68"><div align="center"><strong>Mobile</strong></div></td>
    <td width="65"><div align="center"><strong>Email</strong></div></td>
    <td width="145"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("Select * from user_details");
while(rs.next())
{
sin++;
int id=rs.getInt("u_id");
%>
  <tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
	 <td><div align="center"><img style="border-radius:50% " src="../uploads/<%=rs.getString("photo")%>" width="100px" height="100px"/><br><a href="user_details_select_photo.jsp?id=<%=id%>">Change Picture</a></div></td>
    <td><div align="center"><%=rs.getString("f_name")%></div></td>
    <td><div align="center"><%=rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("mobile")%></div></td>
    <td><div align="center"><%=rs.getString("email")%></div></td>
    <td><div align="center"><a href="user_details_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a onClick="return confirm('Are you sure')"href="user_details_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
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