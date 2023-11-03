<%@page import="com.codebook.user.userRequestBlood"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    String email=(String)session.getAttribute("email");
    String uemail="";
    String status="Accepted";
    String temp="Scheduled";String temp2="Available";String temp3="Reserved";
    String rmobile=request.getParameter("rmobile");
    String dmobile=request.getParameter("dmobile");
    String q1="SELECT * FROM requestblood WHERE mobile='"+rmobile+"'";
    userRequestBlood obj=new userRequestBlood();
    ResultSet rs=obj.Retrieve(q1);
    if(rs.next()){
    uemail=rs.getString("email");
    if(email.equals(uemail)){
    String check=rs.getString("donoravailableforbloodreq");
    if(check.equals("Scheduled")){
    request.getSession();
                session.setAttribute("failed", "Your Status already Updated");
                response.sendRedirect("request.jsp");
    }else{
        String q3="UPDATE requestblood SET donoravailableforbloodreq='"+temp+"' WHERE mobile='"+rmobile+"'";
    
    int rowCount=obj.UpdateProfile(q3);
    
    if(rowCount>0){
        String q6="UPDATE donatenow SET status='"+status+"' WHERE donormobile='"+dmobile+"' && recepientmobile='"+rmobile+"'";
        int rowCount2=obj.UpdateProfile(q6);
        if(rowCount2>0){
           obj.UpdateProfile("UPDATE donatenow SET status='Already Accepted' WHERE status='PENDING'");
           request.getSession();
                session.setAttribute("success", "Status Updation Successful and Donation Accepted");
                response.sendRedirect("request.jsp");
        }else{
        request.getSession();
                session.setAttribute("failed", "Status Updation Failed");
                response.sendRedirect("request.jsp");
        }
    }else{
    request.getSession();
                session.setAttribute("failed", "Failed to accept donation");
                response.sendRedirect("request.jsp");
    }
    }
    
    }else{
    request.getSession();
                session.setAttribute("failed", "You are not an Authorized user to accept or reject");
                response.sendRedirect("request.jsp");
    }
    
    }
    
%>