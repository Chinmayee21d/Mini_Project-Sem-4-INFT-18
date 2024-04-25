<title>Logging Out....!</title>
<%
session.removeAttribute("uname");
session.invalidate();
out.println("<script>alert('logged Out Successfully');document.location='index.jsp';</script>");
%>