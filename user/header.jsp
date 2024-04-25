<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="../wfs_assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Gadget Guru</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->


    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="../wfs_assets/img/nopic.png"alt="Profile" class="rounded-circle">
			<span class="d-none d-md-block dropdown-toggle ps-2"><%@page import="infotech.dbconnect"%>
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
  <h6  class="h6 mb-2 text-gray-800" style="color:#253257!important;"><%=fn%> </h6></span>
			 <%@page import="java.sql.*"%>
          </a><!-- End Profile Iamge Icon -->
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><%=fn%></h6>
              <span>User Panel</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

           <!-- <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li> -->
            <li>
              <hr class="dropdown-divider">
            </li>

            

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-key"></i>
                <span>Change password</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" onClick="return confirm('Are you Sure?')" href="../logout.jsp">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->