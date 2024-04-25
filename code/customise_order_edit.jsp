<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Custom Orders</h1>
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
ResultSet rs=s.stm.executeQuery("select * from customise_details,user_details where co_id='"+b+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="customise_order_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
  
  <div class="col-12">
           <label for="inputName4" class="form-label">User Name</label>
  <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="uid" type="text" id="uid" value="<%=rs.getString("u_id")%>">
  </div><br>
  
      <div class="col-12">
           <label for="inputName4" class="form-label">Monitor</label>
     <input class="validate[required] form-control" style="width:90%" name="mon" type="text" id="mon" value="<%=rs.getString("monitor")%>">
	 </div><br>
    
	<div class="col-12">
           <label for="inputName4" class="form-label">Processor</label>
	<input class="validate[required] form-control" style="width:90%" name="pro" type="text" id="pro" value="<%=rs.getString("processor")%>">
	</div><br>
	
    <div class="col-12">
           <label for="inputName4" class="form-label">RAM</label>
	<input class="validate[required] form-control" style="width:90%" name="ram" type="text" id="ram" value="<%=rs.getString("ram")%>">
	</div><br>
	  
	  <div class="col-12">
           <label for="inputName4" class="form-label">SSD</label>
      <input class="validate[required] form-control" style="width:90%" name="ssd" type="text" id="ssd" value="<%=rs.getString("ssd")%>">
	  </div><br>
	  
     <div class="col-12">
           <label for="inputName4" class="form-label">HDD</label>
	  <input class="validate[required] form-control" style="width:90%" name="hdd" type="text" id="hdd" value="<%=rs.getString("hdd")%>">
	  </div><br>
     
	 <div class="col-12">
           <label for="inputName4" class="form-label">Cabinet</label>
	 <input class="validate[required] form-control" style="width:90%"  name="cab" type="text" id="cab" value="<%=rs.getString("cabinet")%>">
	 </div><br>
	 
	 <div class="col-12">
           <label for="inputName4" class="form-label">Motherboard</label>
    <input class="validate[required] form-control" style="width:90%" name="mb" type="text" id="mb" value="<%=rs.getString("motherboard")%>">
	</div><br>
    
	<div class="col-12">
           <label for="inputName4" class="form-label">Graphic Card</label>
	<input class="validate[required] form-control" style="width:90%" name="gc" type="text" id="gc" value="<%=rs.getString("graphic_card")%>">
	</div><br>
	
    <div class="col-12">
           <label for="inputName4" class="form-label">Power Supply</label>
	<input class="validate[required] form-control" style="width:90%" name="ps" type="text" id="ps" value="<%=rs.getString("power_supply")%>">
	</div><br>
	
	 <div class="col-12">
           <label for="inputName4" class="form-label">User Name</label>
    <input class="validate[required] form-control" style="width:90%" name="kb" type="text" id="kb" value="<%=rs.getString("keyboard")%>">
	</div><br>
	
	<div class="col-12">
           <label for="inputName4" class="form-label">Mouse</label>
    <input name="mou" class="validate[required] form-control" style="width:90%" type="text" id="mou" value="<%=rs.getString("mouse")%>">
	</div><br>
	
	<div class="col-12">
           <label for="inputName4" class="form-label">Order Type</label>
    <input class="validate[required] form-control" style="width:90%" name="ot" type="text" id="ot" value="<%=rs.getString("order_type")%>">
	</div><br>
     
	 <div class="col-12">
           <label for="inputName4" class="form-label">Total Price</label>
	 <input class="validate[required] form-control" style="width:90%" name="tp" type="text" id="tp" value="<%=rs.getString("total_price")%>">
	 </div><br>
    
	 <div class="col-12">
           <label for="inputName4" class="form-label">Order Date</label>
	 <input class="validate[required,custom[date]] form-control" style="width:90%" name="od" type="text" id="od" value="<%=rs.getString("o_date")%>">
	</div><br>
	 
	 <div class="col-12">
           <label for="inputName4" class="form-label">Status</label>
     <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="sta" type="text" id="sta"  value="<%=rs.getString("status")%>">
	 </div><br>
	 
	 <div align="center">
          <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
          <input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
      </div>
	  
  <%
  }
  %>
</form>
<!-- Design Bottom Start -->
</div>
          </div>

     </div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Design Bottom End -->
