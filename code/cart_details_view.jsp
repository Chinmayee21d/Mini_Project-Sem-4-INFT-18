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
      <h1>Cart Details</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="cart_details_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
    <td width="85"><div align="center"><strong>SI.NO</strong></div></td>
    <td width="114"><div align="center"><strong>User  </strong></div></td>
    <td width="149"><div align="center"><strong>Product  </strong></div></td>
    <td width="114"><div align="center"><strong>Quantity</strong></div></td>
	<td width="114"><div align="center"><strong>Total Price</strong></div></td>
    <td width="167"><div align="center"><strong>Action</strong></div></td>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sin=0;
ResultSet rs=s.stm.executeQuery("select * from cart_details c,user_details u,product_details p where u.u_id=c.u_id and c.pr_id=p.pr_id");
while(rs.next())
{
sin++;
int id=rs.getInt("crt_id");			
String qt=rs.getString("quantity");
String pprc=rs.getString("pr_aprice");
int apr=Integer.parseInt(pprc);	
int qnty=Integer.parseInt(qt);
int tprc=apr*qnty;	
%>
  </tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+"  "+rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    <td><div align="center"><%=qnty%></div></td>
	<td><div align="center"><%=tprc%></div></td>
    <td><div align="center"><a class="btn btn-primary" href="cart_details_edit.jsp?id=<%=id%>" title="Edit"><i class="bi bi-pencil"></i></a> <a title="Delete" class="btn btn-danger" onClick="return confirm('Are you sure')" href="cart_details_delete.jsp?id=<%=id%>"><i class="bi bi-trash"></i></a></div></td>
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