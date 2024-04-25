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
      <h1>Custom Orders</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="customise_order_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
    <table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
    <td width="66"><div align="center">SR NO </div></td>
    <td width="77"><div align="center">User </div></td>
    <td width="109"><div align="center">Moniter</div></td>
    <td width="117"><div align="center">Processor</div></td>
    <td width="65"><div align="center">Ram</div></td>
    <td width="61"><div align="center">SSD</div></td>
    <td width="65"><div align="center">HDD</div></td>
    <td width="84"><div align="center">Cabinet</div></td>
    <td width="170"><div align="center">Motherboard</div></td>
    <td width="122"><div align="center">Graphic card </div></td>
    <td width="144"><div align="center">Power Supply </div></td>
    <td width="109"><div align="center">Keyboard</div></td>
    <td width="72"><div align="center">Mouse</div></td>
    <td width="93"><div align="center">Order Type </div></td>
    <td width="94"><div align="center">Total Price </div></td>
    <td width="98"><div align="center">Order Date </div></td>
    <td width="70"><div align="center">Status</div></td>
    <td width="346"><div align="center">Action</div></td>
  </tr>
  </thead>
    <%@page import="java.sql.*"%>
  <%@page import="infotech.dbconnect"%>
  <jsp:useBean id="s" class="infotech.dbconnect"/>
  
  <jsp:getProperty name='s' property="conn"/>
  <%
int sin=0;
ResultSet rs=s.stm.executeQuery("select* from customise_details s, user_details d where s.u_id=d.u_id ");
while(rs.next())
{
sin++;
int mid=rs.getInt("co_id");
%>
<tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+"  "+rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("monitor")%></div></td>
    <td><div align="center"><%=rs.getString("processor")%></div></td>
    <td><div align="center"><%=rs.getString("ram")%></div></td>
    <td><div align="center"><%=rs.getString("ssd")%></div></td>
    <td><div align="center"><%=rs.getString("hdd")%></div></td>
    <td><div align="center"><%=rs.getString("cabinet")%></div></td>
    <td><div align="center"><%=rs.getString("motherboard")%></div></td>
    <td><div align="center"><%=rs.getString("graphic_card")%></div></td>
    <td><div align="center"><%=rs.getString("power_supply")%></div></td>
    <td><div align="center"><%=rs.getString("keyboard")%></div></td>
    <td><div align="center"><%=rs.getString("mouse")%></div></td>
    <td><div align="center"><%=rs.getString("order_type")%></div></td>
    <td><div align="center"><%=rs.getString("total_price")%></div></td>
    <td><div align="center"><%=rs.getString("o_date")%></div></td>
    <td><div align="center"><%=rs.getString("status")%></div></td>
    <td><div align="center"><a href="customise_order_edit.jsp?id=<%=mid%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a>|<a href="customise_order_delete.jsp?id=<%=mid%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
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