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
      <h1>Bank Details</h1>
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
<title>Form</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<jsp:include page="val.jsp"></jsp:include>	

<form id="WFS_Riz" name="form1" method="post" action="bank_details_insert.jsp" class="style1">
   <div class="col-12">
      <label for="inputName4" class="form-label">Bank Name</label>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="bn" type="text" id="bn">
      </div><br>
	  
      <div class="col-12">
      <label for="inputName4" class="form-label">UPI</label>
        <input class="validate[required] form-control" style="width:90%" name="upi" type="text" id="upi">
      </div><br>
        
	  <div class="col-12">
      <label for="inputName4" class="form-label">PIN</label> 
        <input class="validate[required,custom[onlyNumber],length[4,4]] form-control" style="width:90%" name="pn" type="password" id="pn">
      </div><br>
   
      <div class="col-12">
      <label for="inputName4" class="form-label">Amount</label>
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="am" type="text" id="am">
      </div><br>
    
	 <div class="col-12">
      <label for="inputName4" class="form-label">Account Holder</label>
             <select class="validate[required] form-control" style="width:90%" name="ah" id="ah">
                 <option value="">-- Select User --</option>
                 <%
		ResultSet rs=s.stm.executeQuery("Select * from user_details");
		while(rs.next())
		{
		%>
                 <option value="<%=rs.getInt("u_id")%>"><%=rs.getString("f_name")%> <%=rs.getString("l_name")%> </option>
               <%
		}
		%>
          </select>
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

