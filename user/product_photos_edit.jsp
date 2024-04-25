<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Product Photos</h1>
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
ResultSet rs=s.stm.executeQuery("select * from product_photos where pp_id='"+b+"'");
rs.next();

%>
<form id="WFS_Riz" name="form1" method="post" action="product_photos_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
<div class="col-12">
           <label for="inputName4" class="form-label">Product ID</label>
          <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="pid" readonly="" type="text" id="pid" value="<%=rs.getString("pr_id")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Product Photo-1</label>
          <input class="validate[required] form-control" style="width:90%"  name="pp1" type="text" id="pp" value="<%=rs.getString("pr_photo1")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Product Photo-2</label>
          <input class="validate[required] form-control" style="width:90%"  name="pp2" type="text" id="pp2" value="<%=rs.getString("pr_photo2")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Product Photo-3</label>
          <input class="validate[required] form-control" style="width:90%"  name="pp3" type="text" id="pp3" value="<%=rs.getString("pr_photo3")%>">
      </div><br>
    
          <div align="center">
            <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
            <input type="submit" class="btn btn-secondary" name="Submit" value="Reset">
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