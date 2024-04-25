<jsp:include page="val.jsp"></jsp:include>
<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Shipping Details</h1>
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
ResultSet rs=s.stm.executeQuery("select * from shipping_details where sp_id='"+b+"'");
rs.next();

%>
<form id="WFS_Riz" name="form1" method="post" action="shipping_details_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
  <div class="col-12">
           <label for="inputName4" class="form-label">User ID</label>
        <input class="validate[required] form-control" style="width:90%" readonly="" name="uid" type="text" id="uid" value="<%=rs.getString("u_id")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Address</label>
        <input class="validate[required] form-control" style="width:90%" name="adr" type="text" id="adr" value="<%=rs.getString("address")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Landmark</label>
        <input class="validate[required] form-control" style="width:90%" name="lm" type="text" id="lm" value="<%=rs.getString("landmark")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Pincode</label>
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="pc" type="text" id="pc" value="<%=rs.getString("pincode")%>">
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