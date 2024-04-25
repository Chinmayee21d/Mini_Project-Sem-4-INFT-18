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
<title>Update</title>
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
ResultSet rs=s.stm.executeQuery("select * from contact_us where c_id='"+b+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="contact_us_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">  
          
		  <div class="col-12">
      <label for="inputName4" class="form-label">First Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fn" type="text" id="fn" value="<%=rs.getString("f_name")%>">
          </div><br>
          
		  <div class="col-12">
      <label for="inputName4" class="form-label">Last Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ln" type="text" id="ln"value="<%=rs.getString("l_name")%>">
          </div><br>
          
		  <div class="col-12">
      <label for="inputName4" class="form-label">Email</label>
          <input class="validate[required,custom[email] form-control" style="width:90%" name="email" type="text" id="email"value="<%=rs.getString("email")%>">
          </div><br>
    
	     <div class="col-12">
      <label for="inputName4" class="form-label">Mobile</label>
          <input class="validate[required,custom[mobile] form-control" style="width:90%" name="mobile" type="text" id="mobile" maxlength="10" value="<%=rs.getString("mobile")%>">
      </div><br>
    
	     <div class="col-12">
      <label for="inputName4" class="form-label">Message</label>
          <input class="validate[required] form-control" style="width:90%" name="msg" type="text" id="msg" value="<%=rs.getString("message")%>">
        </div><br>
   
        <div class="col-12">
      <label for="inputName4" class="form-label">Recieve Date</label>
          <input name="rdate"class="validate[required,custom[date]] form-control" style="width:90%"  type="text" id="rdate" value="<%=rs.getString("r_date")%>">      
          </div><br>
    
	<div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
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
