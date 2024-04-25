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
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%
SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
Date d = new Date();
sd.setTimeZone(TimeZone.getTimeZone("IST"));
String Today=sd.format(d);
%>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="customise_order_insert.jsp" class="style1">
         <div class="col-12">
           <label for="inputName4" class="form-label">User Name</label> 
         <select class="validate[required] form-control" style="width:90%" name="uid" id="uid">
                <option>---Select User---</option>
                <%
		ResultSet rs=s.stm.executeQuery("Select * from user_details");
		while(rs.next())
		{
		%>
                <option value="<%=rs.getInt("u_id")%>"><%=rs.getString("f_name")%> <%=rs.getString("l_name")%></option>
            <%
		}
		%>
          </select>
      </div><br>
    
	    <div class="col-12">
           <label for="inputName4" class="form-label">Monitor</label>
        <input class="validate[required] form-control" style="width:90%" name="mon" type="text" id="mon">
      </div><br>
   
        <div class="col-12">
           <label for="inputName4" class="form-label">Processor</label>
        <input class="validate[required] form-control" style="width:90%" name="pro" type="text" id="pro">
      </div><br>
   
        <div class="col-12">
           <label for="inputName4" class="form-label">RAM</label>
        <input class="validate[required] form-control" style="width:90%" name="ram" type="text" id="ram">
      </div><br>
   
        <div class="col-12">
           <label for="inputName4" class="form-label">SSD</label>
        <input class="validate[required] form-control" style="width:90%" name="ssd" type="text" id="ssd">
      </div><br>
   
        <div class="col-12">
           <label for="inputName4" class="form-label">HDD</label>
        <input class="validate[required] form-control" style="width:90%" name="hdd" type="text" id="hdd">
      </div></br>
    
	    <div class="col-12">
           <label for="inputName4" class="form-label">Cabinet</label>
        <input class="validate[required] form-control" style="width:90%" name="cab" type="text" id="cab">
      </div><br>
    
	   <div class="col-12">
           <label for="inputName4" class="form-label">Moherboard</label>
        <input class="validate[required] form-control" style="width:90%" name="mb" type="text" id="mb">
      </div><br>
        
		<div class="col-12">
           <label for="inputName4" class="form-label">Graphic Card</label>
        <input class="validate[required] form-control" style="width:90%" name="gc" type="text" id="gc">
      </div><br>
        
		<div class="col-12">
           <label for="inputName4" class="form-label">Power Supply</label>
        <input class="validate[required] form-control" style="width:90%" name="ps" type="text" id="ps">
      </div><br>
        
		<div class="col-12">
           <label for="inputName4" class="form-label">Key Board</label>
        <input class="validate[required] form-control" style="width:90%" name="kb" type="text" id="kb">
      </div><br>
    
	    <div class="col-12">
           <label for="inputName4" class="form-label">Mouse</label>
        <input class="validate[required] form-control" style="width:90%" name="mou" type="text" id="mou">
      </div><br>
    
	    <div class="col-12">
           <label for="inputName4" class="form-label">Order Type</label>
        <input class="validate[required] form-control" style="width:90%" name="ot" type="text" id="ot">
      </div><br>
   
        <div class="col-12">
           <label for="inputName4" class="form-label">Total Price</label>
        <input class="validate[required] form-control" style="width:90%" name="tp" type="text" id="tp">
      </div><br>
         
		 <div class="col-12">
           <label for="inputName4" class="form-label">Order Date</label>
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="od" type="text" readonly="" value="<%=Today%>" id="od">
        </div><br>
        
		<!-- <div class="col-12">
           <label for="inputName4" class="form-label">Status</label>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="sta" type="text" id="sta">
      </div><br> -->
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
out.println("<script>alert('Your Session Expired.Please Relogin...!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->
