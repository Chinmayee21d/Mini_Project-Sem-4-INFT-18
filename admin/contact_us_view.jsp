<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null && session.getAttribute("utype").equals("admin"))
{
%>
<!-- Session Validator -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Contact Us </h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="contact_us_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
    <td width="122"><div align="center"><strong>SI NO.</strong></div></td>
    <td width="252"><div align="center"><strong>First Name </strong></div></td>
    <td width="252"><div align="center"><strong>Last Name </strong></div></td>
    <td width="231"><div align="center"><strong>Email</strong></div></td>
    <td width="153"><div align="center"><strong>Mobile</strong></div></td>
    <td width="112"><div align="center"><strong>Message</strong></div></td>
    <td width="137"><div align="center"><strong>Recieve Date </strong></div></td>
    <td width="177"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
 <%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("select * from contact_us");
while(rs.next())
{
sin++;
int id=rs.getInt("c_id");				
%>
  <tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("f_name")%></div></td>
    <td><div align="center"><%=rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("email")%></div></td>
    <td><div align="center"><%=rs.getString("mobile")%></div></td>
    <td><div align="center"><%=rs.getString("message")%></div></td>
    <td><div align="center"><%=rs.getString("r_date")%></div></td>
    <td><div align="center"><a href="contact_us_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a onClick="return confirm('Are you sure')" href="contact_us_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
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
out.println("<script>alert('Your Session Expired...Please Re-Login....!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->

