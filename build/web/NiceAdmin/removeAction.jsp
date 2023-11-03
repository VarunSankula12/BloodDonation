<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String query="DELETE FROM donate WHERE email='"+email+"' && mobile='"+mobile+"'";
    adminDao obj=new adminDao();
    int rowCount=obj.UpdateProfile(query);
    if(rowCount>0){
        request.getSession();
        session.setAttribute("success", "User Removed Successfully!");
        response.sendRedirect("edit-blood.jsp");
    }else{
        request.getSession();
        session.setAttribute("failed", "Failed to remove User!");
        response.sendRedirect("edit-blood.jsp");
    }

%>
