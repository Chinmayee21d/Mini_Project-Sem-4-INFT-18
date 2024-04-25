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
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%
SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
Date d = new Date();
sd.setTimeZone(TimeZone.getTimeZone("IST"));
String Today=sd.format(d);
%>
<%
SimpleDateFormat sd1=new SimpleDateFormat("hh:mm:ss");
Date da = new Date();
sd1.setTimeZone(TimeZone.getTimeZone("IST"));
String time=sd1.format(da);
%>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="order_details_insert.jsp" class="style1">
    
	    
		<div class="col-12">
           <label for="inputName4" class="form-label">Shipping Address</label>
        <select class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="shi" id="shi">
              <option>---Select Shipping Address---</option>
              <%
		ResultSet rs2=s.stm.executeQuery("Select * from shipping_details s,user_details u where s.u_id=u.u_id");
		while(rs2.next())
		{
		%>
              <option value="<%=rs2.getInt("sp_id")%>"><%=rs2.getString("address")%></option>
        <%
		}
		%>
          </select>
      </div><br>
          
		  <div class="col-12">
           <label for="inputName4" class="form-label">Order Date</label>
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="od" type="text" value="<%=Today%>" readonly="" id="od">
        </div><br>
    
	      
		  <div class="col-12">
           <label for="inputName4" class="form-label">Order Time</label>
          <input class="validate[required] form-control" style="width:90%" name="ot" type="text" value="<%=time%>" readonly=""id="ot">
          </div><br>
		  
		  <div class="col-12">
           <label for="inputName4" class="form-label">Status</label>
          <input class="validate[required] form-control" style="width:90%" name="st" type="text" value="Order Placed" readonly=""id="st">
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
out.println("<script>alert('Your Session Expired.Please Relogin...!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->