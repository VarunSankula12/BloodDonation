<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String status="ACCEPTED";
    String mobile=request.getParameter("mobile");
    String query="SELECT * FROM requestblood WHERE mobile='"+mobile+"'";
    adminDao obj=new adminDao();
    ResultSet rs=obj.Retrieve(query);
    if(rs.next()){
        String q1="UPDATE requestblood SET status='"+status+"' WHERE mobile='"+mobile+"'";
        int rowCount=obj.UpdateProfile(q1);
        if(rowCount>0){
            request.getSession();
        session.setAttribute("success", "Approval Successful!");
        response.sendRedirect("blood-request.jsp");
        }else{
            request.getSession();
        session.setAttribute("failed", "Failed to Approve!");
        response.sendRedirect("blood-request.jsp");
        }
    }
%>
