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
      <h1>Product Photos</h1>
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
<form id="WFS_Riz" name="form1" method="post" action="product_photos_insert.jsp" class="style1"> 
  <div class="col-12">
           <label for="inputName4" class="form-label">Product Name</label>
        <select  name="pid" class="validate[required] form-control" style="width:90%"  id="pid">
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
	 
     
	      <div align="center">
        <input type="submit" class="btn btn-primary"  name="Submit" value="Submit">
         <input type="submit" class="btn btn-secondary"  name="Submit" value="Reset">
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