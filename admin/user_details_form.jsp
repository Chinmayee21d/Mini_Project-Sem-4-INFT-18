1st line in form and view


<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null  && session.getAttribute("utype").equals("admin"))
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
      <h1>User Details</h1>
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

<form id="WFS_Riz" name="form1" method="post" action="user_details_insert.jsp" class="style1">
  <div class="col-12">
           <label for="inputName4" class="form-label">First Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fn" type="text" id="fn">
          </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Last Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ln" type="text" id="ln">
        </div><br>
      <div class="col-12">
           <label for="inputName4" class="form-label">Mobile No.(+91)</label>
          <input class="validate[required,custom[mobile] form-control" style="width:90%" name="mb" type="text" id="mb" maxlength="10">
        </div><br>
        
    <div class="col-12">
           <label for="inputName4" class="form-label">Email</label>
          <input class="validate[required,custom[email] form-control" style="width:90%" name="em" type="text" id="em">
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
<%
}
else
{
out.println("<script>alert('Your Session Expired...Please Re-Login....!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->