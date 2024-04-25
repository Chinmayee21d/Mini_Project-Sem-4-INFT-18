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
      <h1>Contact Us</h1>
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
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%
SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
Date d = new Date();
sd.setTimeZone(TimeZone.getTimeZone("IST"));
String Today=sd.format(d);
%>
<jsp:include page="val.jsp"></jsp:include>
<title>Contact Us</title><form id="WFS_Riz" name="form1" method="post" action="contact_us_insert.jsp" class="style1">
           
	  <div class="col-12">
      <label for="inputName4" class="form-label">First Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fn" type="text" id="fn">
          </div><br>
          
	  <div class="col-12">
      <label for="inputName4" class="form-label">Last Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ln" type="text" id="ln">
          </div><br>
          
		  <div class="col-12">
      <label for="inputName4" class="form-label">Email</label>
          <input class="validate[required,custom[email] form-control" style="width:90%"  name="email" type="text" id="email">
          </div><br>
   
          
		  <div class="col-12">
      <label for="inputName4" class="form-label">Mobile</label>
          <input class="validate[required,custom[mobile] form-control" style="width:90%" name="mobile" type="text" id="mobile" maxlength="10">
      </div><br>
    
        <div class="col-12">
      <label for="inputName4" class="form-label">Message</label>
      <textarea name="msg" rows="4" class="validate[required] form-control" style="width:90%" id="msg"></textarea>
</div><br>
    
	       <div class="col-12">
      <label for="inputName4" class="form-label">Sent Date</label>
          <input class="validate[required,custom[date]] form-control" style="width:90%" readonly="" name="rdate" type="text" id="rdate" value="<%=Today%>">      
          </div><br>
        <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
</div> 
</form>
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