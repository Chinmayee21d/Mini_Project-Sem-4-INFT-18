<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Category</h1>
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
ResultSet rs=s.stm.executeQuery("select * from category where ct_id='"+b+"'");
rs.next();

%>
<form id="WFS_Riz" name="form1" method="post" action="category_update.jsp" class="style1">
  <input type="hidden" name="b" value="<%=b%>">
           
		   <div class="col-12">
           <label for="inputName4" class="form-label">Category Name</label>
          <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="cname" type="text" id="cname" value="<%=rs.getString("ct_name")%>">
</div><br>
           
		    <div class="col-12">
           <label for="inputName4" class="form-label">Category Description</label>
          <textarea class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="cdesc" id="cdesc"><%=rs.getString("ct_description")%></textarea>
        </div><br>
    <div align="center">
<input type="submit" class="btn btn-primary" name="Submit" value="Submit">
<input name="Reset" class="btn btn-secondary" type="submit" id="Reset" value="Reset">
</div>
</form>
<%
}
%>
</div>
          </div>

     </div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Design Bottom End -->
