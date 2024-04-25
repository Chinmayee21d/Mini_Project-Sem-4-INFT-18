<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Feedback Edit</h1>
    </div>

    <section class="section dashboard">
      <div class="row">
	    <div  class="card">
         <div  class="card-body">
	     <h5 class="card-title"> </h5>
		 
<jsp:include page="val.jsp"></jsp:include>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
String b=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from feedback f,user_details u where f.u_id=u.u_id ");
rs.next();
%>
<form action="feedback_update.jsp" method="post" name="form1" class="style1">
  <input type="hidden" name="b" value="<%=b%>">
	 <div class="col-12">
      <label for="inputName4" class="form-label" >User</label>
    <input class="validate[required] form-control" style="width:90%" name="uid" type="text" id="uid" value="<%=rs.getString("u_id")%>" readonly=""/>
	</div><br>
	
    <div class="col-12">
      <label for="inputName4" class="form-label">Feedback</label>
      <textarea name="fb" rows="4" class="validate[required] form-control" style="width:90%" id="fb"><%=rs.getString("feedback")%></textarea>
	  </div><br>
	  
      <div class="col-12">
      <label for="inputName4" class="form-label">Sent Date</label>
      <input class="validate[required,custom[date]] form-control" style="width:90%" name="sd" type="text" id="sd"  value="<%=rs.getString("s_date")%>">
      </div><br>
	  
	      <div align="center">
          <input type="submit" class="btn btn-primary"  name="Submit" value="Submit">      
          <input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
      </div>
</form>
<%
}
%>
</div>
</div>

</div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Design Bottom End -->

