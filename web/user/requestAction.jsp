<%@page import="com.codebook.user.userRequestBlood"%>
<%@page import="com.codebook.user.userDonateBlood"%>
<%@page import="com.codebook.bean.Bean"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    String name=request.getParameter("name");
    String email=(String)session.getAttribute("email");
    String bloodGroup=request.getParameter("bloodgroup");
    String age=request.getParameter("age");
    String bloodUnits=request.getParameter("bloodunits");
    String location=request.getParameter("location");
    String mobile=request.getParameter("mobile");
    String center=request.getParameter("urgency");
    String info=request.getParameter("info");
    Bean b=new Bean();
    b.setName(name);
    b.setAge(age);
    b.setAddress(location);
    b.setEmail(email);
    b.setMobile(mobile);
    b.setPassword(bloodGroup);
    b.setTemp(bloodUnits);
    b.setCenter(center);
    b.setInfo(info);
    
    userRequestBlood obj=new userRequestBlood();
    
    String query="INSERT INTO requestblood(name,email,bloodgroup,age,reqbloodunits,location,mobile,urgency,info) VALUES(?,?,?,?,?,?,?,?,?)";
    
    int rowCount=obj.Register(b, query);
    if(rowCount>0){
    request.getSession();
                session.setAttribute("success", "Request Sent to admin Successfully");
                response.sendRedirect("request.jsp");
    }else{
    request.getSession();
                session.setAttribute("failed", "Failed to send request");
                response.sendRedirect("request.jsp");
    }
    
    
    

%>
