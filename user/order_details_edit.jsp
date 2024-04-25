<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Order Details</h1>
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
<title>Update</title>
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
ResultSet rs=s.stm.executeQuery("select * from order_details where o_id='"+b+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="order_details_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
  
        <div class="col-12">
           <label for="inputName4" class="form-label">User Name</label>
        <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="uid" type="text" id="uid" value="<%=rs.getString("u_id")%>">
      </div><br>
	  
    <div class="col-12">
           <label for="inputName4" class="form-label">Product Name</label>
        <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="pid" type="text" id="pid" value="<%=rs.getString("pr_id")%>">
        </div><br>
		
    <div class="col-12">
           <label for="inputName4" class="form-label">Quantity</label>
        <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="qu" type="number" min="1" max="10" id="qu" value="<%=rs.getString("quantity")%>">
      </div><br>
   
    <div class="col-12">
           <label for="inputName4" class="form-label">Shipping ID</label>
        <input class="validate[required,custom[onlyNumber] form-control" style="width:90%" name="shi" type="text" id="shi" value="<%=rs.getString("sp_id")%>">
      </div><br>
    
	<div class="col-12">
           <label for="inputName4" class="form-label">Order Date</label>
        <input class="validate[required,custom[date]] form-control" style="width:90%" name="od" type="text" id="od" value="<%=rs.getString("o_date")%>">
      </div><br>
    
	<div class="col-12">
           <label for="inputName4" class="form-label">Order Time</label>
        <input class="validate[required] form-control" style="width:90%" readonly="" name="ot" type="text" id="ot" value="<%=rs.getString("o_time")%>">
      </div><br>
    
	<div class="col-12">
           <label for="inputName4" class="form-label">Status</label>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="st" type="text" id="st" value="<%=rs.getString("status")%>">
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
