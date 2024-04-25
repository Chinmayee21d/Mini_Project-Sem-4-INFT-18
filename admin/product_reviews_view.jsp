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
      <h1>Product Reviews</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><!-- <a class="btn btn-success" href="product_reviews_form.jsp"><i class="bi bi-plus"></i> Add New</a> --></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
  <tr>
    <td width="90" height="46"><div align="center"><strong>SL No. </strong></div></td>
    <td width="98"><div align="center"><strong>Product </strong></div></td>
    <td width="62"><div align="center"><strong>Ratings</strong></div></td>
    <td width="75"><div align="center"><strong>Review</strong></div></td>
    <td width="87"><div align="center"><strong>User </strong></div></td>
    <td width="177"><div align="center"><strong>Product Review Date</strong></div></td>
    <!-- <td width="118"><div align="center"><strong>Action:</strong></div></td> -->
  </tr>
  </thead>
  <title>Processing...</title>
  <%@page import="java.sql.*"%>
  <%@page import="infotech.dbconnect"%>
  <jsp:useBean id="s" class="infotech.dbconnect"/>
  
  <jsp:getProperty name="s" property="conn"/>
  <%
int sin=0;
ResultSet rs=s.stm.executeQuery("Select * from product_review s,product_details d,user_details u where s.pr_id=d.pr_id and s.u_id=u.u_id");
while(rs.next())
{
sin++;
int id=rs.getInt("prr_id");
%>
<tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    <td><div align="center"><%=rs.getString("Ratings")%></div></td>
    <td><div align="center"><%=rs.getString("Review")%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+" "+rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("prv_date")%></div></td>
<!-- 	<td><div align="center"><a href="product_reviews_edit.jsp?id=<%=id%>"class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a href="product_reviews_delete.jsp?id=<%=id%>"class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
 -->	
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