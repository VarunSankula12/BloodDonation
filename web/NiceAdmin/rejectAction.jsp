<%@page import="com.codebook.admin.adminDao"%>
<%
    String mobile=request.getParameter("mobile");
    String query="UPDATE requestblood SET status='Rejected' WHERE mobile='"+mobile+"'";
    adminDao obj=new adminDao();
    int rowCount=obj.UpdateProfile(query);
    if(rowCount>0){
        request.getSession();
        session.setAttribute("success", "Rejection Successful!");
        response.sendRedirect("blood-request.jsp");
    }else{
        request.getSession();
        session.setAttribute("failed", "Failed to Reject!");
        response.sendRedirect("blood-request.jsp");
    }
%>
