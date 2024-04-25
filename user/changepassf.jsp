<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
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
      <h1>Change Password</h1>
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

<form id="WFS_Riz" name="form1" method="post" action="changepass.jsp" class="style1">
   <div class="col-12">
      <label for="inputName4" class="form-label">Old Password</label>
        <input class="validate[required] form-control" style="width:90%" name="op" type="password" id="op">
      </div><br>
	  
	  <div class="col-12">
      <label for="inputName4" class="form-label">New Password</label>
        <input class="validate[required] form-control" style="width:90%" name="np" type="password" id="np">
      </div><br>
	  
	  <div class="col-12">
      <label for="inputName4" class="form-label">Confirm Password</label>
        <input class="validate[required] form-control" style="width:90%" name="cp" type="password" id="cp">
      </div><br>
	  
     
    <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
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
out.println("<script>alert('Your Session Expired');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->

