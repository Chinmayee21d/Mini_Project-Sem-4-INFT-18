<!-- Session Validator -->
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>
<!-- Session Validator -->
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("Select * from login  where username='"+un+"' ");
rs.next();
%>
<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Select Security Question</h1>
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

<form id="WFS_Riz" name="form1" method="post" action="sq_insert.jsp" class="style1">
   <div class="col-12">
      <label for="inputName4" class="form-label"> New Question</label>
        <select name="sq" class="validate[required] form-control" style="width:90%" id="sq">
        <option>---Select Question---</option>
        <option>Write the name of your birthplace.</option>
        <option>Who is your favourite cricket player?</option>
        <option>Who is your favourite Actor?</option>
        <option>what is your favourite dish?</option>
      </select>
      </div><br>
	  
	  <div class="col-12">
      <label for="inputName4" class="form-label">Answer (Erase the answer and type new asnwer)</label>
        <input class="validate[required] form-control" style="width:90%" name="sa" type="password" id="sa" value="<%=rs.getString("s_answer")%>">
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

