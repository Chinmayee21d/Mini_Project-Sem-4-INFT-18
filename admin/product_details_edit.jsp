<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Product Details</h1>
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
ResultSet rs=s.stm.executeQuery("select * from product_details where pr_id='"+b+"'");
rs.next();

%>
<form id="WFS_Riz" name="form1" method="post" action="product_details_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">

<div class="col-12">
           <label for="inputName4" class="form-label">Sub Category</label>
        <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="scid"  readonly="" type="text" id="scid" value="<%=rs.getString("sct_id")%>">
    </div><br>
	
 <div class="col-12">
           <label for="inputName4" class="form-label">Product Name</label>
        <input class="validate[required,custom[onlyLetter] form-control" style="width:90%" name="pn" type="text" id="pn" value="<%=rs.getString("pr_name")%>">
    </div><br>
	
  <div class="col-12">
           <label for="inputName4" class="form-label">Product Description</label>
        <textarea class="validate[required] form-control" style="width:90%" name="pd" id="pd"><%=rs.getString("pr_description")%></textarea>
    </div><br>
	
  <div class="col-12">
           <label for="inputName4" class="form-label">Product Price</label>
        <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="pp" type="text" id="pp" value="<%=rs.getString("pr_aprice")%>">
    </div><br>
	
  <div class="col-12">
           <label for="inputName4" class="form-label">Product Status</label>
        <input name="ps" class="validate[required] form-control" style="width:90%" type="text" id="ps" value="<%=rs.getString("pr_status")%>">
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

