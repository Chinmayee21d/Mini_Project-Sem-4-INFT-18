<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null && session.getAttribute("utype").equals("admin"))
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
      <h1>Feedback Form</h1>
    </div>

    <section class="section dashboard">
      <div class="row">
	    <div class="card">
            <div class="card-body">
			<h5 class="card-title"> </h5>
<!-- Design Top End -->

<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%
SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
Date d = new Date();
sd.setTimeZone(TimeZone.getTimeZone("IST"));
String Today=sd.format(d);
%>
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
<form id="WFS_Riz" action="feedback_insert.jsp" method="post" name="form1" class="style1">
      <div class="col-12">
      <label for="inputName4" class="form-label">User ID</label>
          <select class="validate[required] form-control" style="width:90%" name="uid" id="uid">
                <option value="">-- Select User --</option>
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
         </div></br>
    
	<div class="col-12">
      <label for="inputName4" class="form-label">Feedback</label>
          <textarea name="fb" rows="4" class="validate[required] form-control" id="fb" style="width:90%"></textarea>
        </div></br>
    
	<div class="col-12">
      <label for="inputName4" class="form-label">Sent Date</label>
        <input class="validate[required,custom[date]] form-control" style="width:90%"  name="sd" type="text" readonly="" value="<%=Today%>" id="sd">
      </div></br>
	  
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
out.println("<script>alert('Your Session Expired...Please Re-Login....!');document.location='../index.jsp';</script>");
}
%>
<!-- Session Validator -->