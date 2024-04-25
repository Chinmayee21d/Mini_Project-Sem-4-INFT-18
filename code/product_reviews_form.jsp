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
      <h1>Product Reviews</h1>
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
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Forrm</title>
</head>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<body>
<form id="WFS_Riz" name="form1" method="post" action="product_reviews_insert.jsp" class="style1">
  <div class="col-12">
           <label for="inputName4" class="form-label">Product Name</label>
           <select name="pid" class="validate[required] form-control" style="width:90%" id="pid">
		     <option>---Select Product---</option>
		     <%
		 ResultSet rs=s.stm.executeQuery("Select * from product_details");
		 while(rs.next())
		 {
		 %>
		     <option value="<%=rs.getInt("pr_id")%>"><%=rs.getString("pr_name")%></option>
		     <%
		 }
		 %>
	      </select>
         </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Ratings</label>
          <input class="validate[required] form-control" style="width:90%" name="rt" type="text" id="rt">
          </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Reviews</label>
          <input class="validate[required] form-control" style="width:90%" name="rv" type="text" id="rv" value="">
            </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">User Name</label>
                <select class="validate[required] form-control" style="width:90%" name="uid" id="uid">
                  <option>---Select User---</option>
                  <%
		 ResultSet rs1=s.stm.executeQuery("Select * from user_details");
		 while(rs1.next())
		 {
		 %>
                  <option value="<%=rs1.getInt("u_id")%>"><%=rs1.getString("f_name")+"  "+rs1.getString("l_name")%></option>
                  <%
		 }
		 %>
            </select>
            </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Product Review Date</label>
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="prd" type="text" readonly="" value="<%=Today%>" id="prd">
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