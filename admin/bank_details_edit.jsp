<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Bank Details Edit</h1>
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
ResultSet rs=s.stm.executeQuery("select * from bank_details where b_id='"+b+"'");
rs.next();
%>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="bank_details_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
        
		<div class="col-12">
      <label for="inputName4" class="form-label">Bank Name</label> 
        <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%"  name="bn" type="text" id="bn" value="<%=rs.getString("b_name")%>">
      </div><br>
        
		<div class="col-12">
      <label for="inputName4" class="form-label">UPI</label>
        <input class="validate[required]  form-control" style="width:90%"  name="upi" type="text" id="upi" value="<%=rs.getString("upi")%>">
      </div><br>
        
		<div class="col-12">
      <label for="inputName4" class="form-label">PIN</label> 
        <input class="validate[required,custom[onlyNumber],length[4,4]]  form-control" style="width:90%" name="pn" type="text" id="pn" value="<%=rs.getString("pin")%>">
      </div><br>
        
		<div class="col-12">
      <label for="inputName4" class="form-label">Amount</label>
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="am" type="text" id="am" value="<%=rs.getString("amount")%>">
      </div><br>
        
		<div class="col-12">
      <label for="inputName4" class="form-label">Account Holder</label> 
        <input class="validate[required] form-control" style="width:90%" name="ah" type="text" id="ah" readonly="" value="<%=rs.getString("u_id")%>">
      </div><br>
	  
   <div align="center">
        <input type="submit" class="btn btn-primary"  name="Submit" value="Submit">
        <input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
      </div><br>
</form>
<%
}
%>
