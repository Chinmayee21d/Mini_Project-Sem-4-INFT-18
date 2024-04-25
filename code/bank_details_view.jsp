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
      <h1>Bank Details </h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="bank_details_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
    <td width="69"><div align="center">SI.NO</div></td>
    <td width="196"><div align="center">Bank Name</div></td>
    <td width="160"><div align="center">UPI</div></td>
    <td width="59"><div align="center">Pin</div></td>
    <td width="59"><div align="center">Amount</div></td>
    <td width="191"><div align="center">Account Holder </div></td>
    <td width="137"><div align="center">Action</div></td>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("Select * from bank_details s,user_details d where s.u_id=d.u_id");
while(rs.next())
{
sin++;
int id=rs.getInt("b_id");
%>
<tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("upi")%></div></td>
    <td><div align="center"><%=rs.getString("pin")%></div></td>
    <td><div align="center"><%=rs.getString("amount")%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+"  "+rs.getString("l_name")%></div></td>
    <td><div align="center"><a class="btn btn-primary" href="bank_details_edit.jsp?id=<%=id%>" titlle="Edit"><i class="bi bi-pencil"></i> </a> <a titlle="Delete"class="btn btn-danger" onClick="return confirm('Are you Sure')" href="bank_details_delete.jsp?id=<%=id%>"><i class="bi bi-trash"></i></a></div></td>
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


