<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null  && session.getAttribute("utype").equals("user"))
{
%>
<!-- Session Validator -->
<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Category</h1>
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
<form id="WFS_Riz" name="form1" method="post" action="category_insert.jsp" class="style1">
           <div class="col-12">
           <label for="inputName4" class="form-label">Category Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="cname" type="text" id="cname">
           </div><br>
    
  <div class="col-12">
           <label for="inputName4" class="form-label">Category Description</label>
           <textarea name="cdesc" rows="4" class="validate[required] form-control" style="width:90%" id="cdesc"></textarea>
</div><br>
           
    <div align="center">
<input type="submit" class="btn btn-primary" name="Submit" value="Submit">
<input name="Reset" class="btn btn-secondary" type="submit" id="Reset" value="Reset">
</div>
</form>
<!-- Design Bottom Start -->
</div>
          </div>

     </div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Design Bottom End -->
<!-- Session Validator -->
<%
}
else
{
out.println("<script>alert('Your Session Expired.Please Relogin...!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->