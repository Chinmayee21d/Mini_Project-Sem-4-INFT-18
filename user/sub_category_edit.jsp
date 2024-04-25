<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Sub Category</h1>
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
<%
String a=request.getParameter("id");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
String b=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from sub_category where sct_id='"+b+"'");
rs.next();

%>
<form id="WFS_Riz" name="form1" method="post" action="sub_category_update.jsp" class="style1">
<input type="hidden" name="b" value="<%=b%>">
<div class="col-12">
           <label for="inputName4" class="form-label">Category ID</label>
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="cid" readonly="" type="text" id="cid" value="<%=rs.getString("ct_id")%>">
</div><br>
   <div class="col-12">
           <label for="inputName4" class="form-label">Sub Category Name</label>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="scn" type="text" id="scn" value="<%=rs.getString("sct_name")%>">
      </div><br>
    <div class="col-12">
           <label for="inputName4" class="form-label">Sub Category Description</label>
      <textarea name="scd" rows="4" class="validate[required] form-control" style="width:90%" id="scd"><%=rs.getString("sct_description")%></textarea>
      </strong><br>
    <div align="center">
<input type="submit" class="btn btn-primary" name="Submit" value="Submit">        
<input type="reset" class="btn btn-secondary" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
</form>
<%
}
%>
<!-- Design Bottom Start -->
</div>
          </div>

     </div>
    </section>

  </main>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Design Bottom End -->
