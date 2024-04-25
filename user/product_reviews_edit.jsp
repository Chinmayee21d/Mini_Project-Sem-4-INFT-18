<!-- Design Top Start -->
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
			<h5 class="card-title"> </h5>
<!-- Design Top End -->
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
<jsp:include page="val.jsp"></jsp:include>
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
ResultSet rs=s.stm.executeQuery("select * from product_review where prr_id='"+b+"'");
rs.next();

%>
<form id="WFS_Riz" name="form1" method="post" action="product_reviews_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
<div class="col-12">
           <label for="inputName4" class="form-label">Product ID</label>
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="pid" type="text" id="pid" readonly="" value="<%=rs.getString("pr_id")%>">
    </div><br>
  <div class="col-12">
           <label for="inputName4" class="form-label">Ratings</label>
        <input class="validate[required] form-control" style="width:90%" name="rt" type="text" id="rt" value="<%=rs.getString("ratings")%>">
    </div><br>
  <div class="col-12">
           <label for="inputName4" class="form-label">Reviews</label>
        <textarea class="validate[required] form-control" style="width:90%" name="rv" id="rv"><%=rs.getString("review")%></textarea>
    </div><br>
  <div class="col-12">
           <label for="inputName4" class="form-label">User ID</label>
        <input name="uid" class="validate[required,custom[onlyNumber]] form-control" style="width:90%" readonly="" type="text" id="uid" value="<%=rs.getString("u_id")%>">
    </div><br>
  <div class="col-12">
           <label for="inputName4" class="form-label">Product Review Date</label>
        <input  class="validate[required,custom[date]] form-control" style="width:90%"name="prd" type="text" id="prd" value="<%=rs.getString("prv_date")%>">
    </div><br>
  
        <div align="center">
          <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
          <input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
      </div>
</form>
<%
}
%>
<!-- Design Bottom Start -->
</div>
          </div>

     </div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Design Bottom End -->
