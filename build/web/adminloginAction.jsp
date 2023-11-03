<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String query="SELECT * FROM admin WHERE email='"+email+"' && password='"+password+"'";
    adminDao obj=new adminDao();
    ResultSet rs=obj.Retrieve(query);
    if(rs.next()){
    request.getSession();
    session.setAttribute("success", "Login Successful!");
    response.sendRedirect("NiceAdmin/Admin-Dashboard.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Entered Credentials are Wrong!");
    response.sendRedirect("admin-login.jsp");
    }
%>