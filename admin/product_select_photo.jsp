<!-- Design Top Start -->
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidemenu.jsp"></jsp:include>
<!-- Main -->
 <main id="main" class="main">
<%
String id=request.getParameter("id");
%>
    <div class="pagetitle">
      <h1>  | <a href="product_photos_view.jsp?id=<%=id%>" onClick="return confirm('Are you sure?')"><button  class="btn btn-danger">Cancel</button></a></h1>
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
<%
String pid=request.getParameter("pid");
String pt=request.getParameter("pt");
session.setAttribute("pid",pid);
session.setAttribute("pt",pt);
session.setAttribute("id",id);
%>

<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="product_upload_photo.jsp" class="style1">
  
         <div class="col-12">
           <label for="inputName4" class="form-label">Select Photo</label>
          <input name="photo" class="validate[required] form-control" style="width:90%" type="file" id="photo">
        </div><br>
  
   <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
<input name="Reset" class="btn btn-secondary" type="submit" id="Reset" value="Reset">

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