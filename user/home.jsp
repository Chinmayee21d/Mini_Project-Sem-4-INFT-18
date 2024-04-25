<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null  && session.getAttribute("utype").equals("user"))
{
%>

<!-- Session Validator -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main --><title>User Panel</title>
 <main id="main" class="main">

    <%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String un=session.getAttribute("uname").toString();
	ResultSet rs=s.stm.executeQuery("select f_name as fn,l_name as ln from user_details where email='"+un+"'");
	rs.next();
	String fn=rs.getString("fn");
	String ln=rs.getString("ln");
%>

	  <!-- Topbar Search -->
	  <h1  class="h3 mb-2 text-gray-800" style="color:#253257!important;">Welcome, <%=fn%> <%=ln%></h1>
	  <!-- Topbar Navbar -->
	  <ul class="navbar-nav ml-auto">
    
	
	   <section class="section">
      <div class="row">
        <div class="col-lg-12">
			
          <div class="card">
            <div class="card-body">
              <h5 class="card-title"> </h5>
              <div align="center"><img style="width:50%" src="../wfs_assets/img/img-2.jpg"/></div>
            </div>
          </div>

        </div>

        
      </div>
    </section>

  </main><!-- End #main -->


<!-- End Main -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Session Validator -->
<%
}
else
{
out.println("<script>alert('Your Session Expired.Please Relogin...!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->