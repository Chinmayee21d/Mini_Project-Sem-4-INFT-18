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
ResultSet rs=s.stm.executeQuery("select * from user_details where u_id='"+b+"'");
rs.next();

%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="user_details_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
  <div class="col-12">
           <label for="inputName4" class="form-label">First Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fn" type="text" id="fn" value="<%=rs.getString("f_name")%>">
        </div><br>
   <div class="col-12">
           <label for="inputName4" class="form-label">Last Name</label>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ln" type="text" id="ln" value="<%=rs.getString("l_name")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Mobile No. (+91)</label>
        <input class="validate[required,custom[mobile] form-control" style="width:90%" name="mb" type="text" id="mb" value="<%=rs.getString("mobile")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Photo</label>
        <input name="ph" class="validate[required] form-control" style="width:90%"  type="text" id="ph" value="<%=rs.getString("photo")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Email</label>
        <input class="validate[required,custom[email] form-control" style="width:90%" name="em" type="text" id="em" value="<%=rs.getString("email")%>">
      </div><br>
    <div align="center">
         <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
<input name="Reset" class="btn btn-secondary" type="submit" id="Reset" value="Reset">
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
