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
      <h1>Product Details</h1>
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
<jsp:include page="val.jsp"></jsp:include>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" action="product_details_insert.jsp" method="post" class="style1">
           
		   <div class="col-12">
           <label for="inputName4" class="form-label"> Sub Category </label>
            <select name="scid" class="validate[required] form-control" style="width:90%" id="scid">
              <option>---Select Sub Category---</option>
              <%
		  ResultSet rs=s.stm.executeQuery("Select * from sub_category");
		  while(rs.next())
		  {
		  %>
              <option value="<%=rs.getInt("sct_id")%>"><%=rs.getString("sct_name")%></option>
              <%
		  }
		  %>
            </select>      
      </div><br>
	  
    <div class="col-12">
           <label for="inputName4" class="form-label">Product Name</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="pn" type="text" id="pn">
        </div><br>
		
    
	      <div class="col-12">
           <label for="inputName4" class="form-label">Product Description</label>
           <textarea name="pd" rows="4" class="validate[required] form-control" style="width:90%" id="pd"></textarea>
        </div><br>
    
	<div class="col-12">
           <label for="inputName4" class="form-label">Product Price</label>
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="pp" type="text" id="pp">
        </div><br>
   
   <div class="col-12">
           <label for="inputName4" class="form-label">Product Status</label>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ps" type="text" id="ps" value="">
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