<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null  && session.getAttribute("utype").equals("user"))
{
%>
<!-- Session Validator -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Feedback</h1>
    </div>

    <section class="section dashboard">
      <div class="row">

       <div class="card">
            <div class="card-body">
              <h5 class="card-title"><a class="btn btn-success" href="feedback_form.jsp"><i class="bi bi-plus"></i> Add New</a></h5>
	<table class="table table-hover table-bordered">
	<thead style="background-color:#414d58; color:#FFFFFF">	
    <td width="67"><div align="center">S N </div></td>
    <td width="118"><div align="center">User </div></td>
    <td width="141"><div align="center">Feedback</div></td>
    <td width="156"><div align="center">Submit date</div></td>
    <td width="238"><div align="center">Action</div></td>
  </tr>
   </thead>
  <%@page import="java.sql.*"%>
  <%@page import="infotech.dbconnect"%>
  <jsp:useBean id="s" class="infotech.dbconnect"/>
  
  <jsp:getProperty name='s' property="conn"/>
  <%
int sin=0;
ResultSet rs=s.stm.executeQuery("select* from feedback s, user_details d where s.u_id=d.u_id ");
while(rs.next())
{
sin++;
int mid=rs.getInt("f_id");
%>
 <tbody>
  <tr>
    <td><div align="center"><%=sin%></div></td>
    <td><div align="center"><%=rs.getString("f_name")+"  "+rs.getString("l_name")%></div></td>
    <td><div align="center"><%=rs.getString("feedback")%></div></td>
    <td><div align="center"><%=rs.getString("s_date")%></div></td>
    <td><div align="center"><a href="feedback_edit.jsp?id=<%=mid%>" class="btn btn-primary" title="Edit"><i class="bi bi-pencil"></i></a> <a onClick="return confirm('Are you Sure')" href="feedback_delete.jsp?id=<%=mid%>" class="btn btn-danger" title="Delete"><i class="bi bi-trash"></i></a></div></td>
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
out.println("<script>alert('Your Session Expiredlease Relogin...!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->