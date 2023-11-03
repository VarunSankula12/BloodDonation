<%@page import="com.codebook.user.userDonateBlood"%>
<%@page import="com.codebook.bean.Bean"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    String name=request.getParameter("name");
    String bloodGroup=request.getParameter("bloodgroup");
    String location=request.getParameter("location");
    String mobile=request.getParameter("contact");
    String bloodUnits=request.getParameter("bloodUnits");
    String age=request.getParameter("age");
    String email=request.getParameter("email");
    String center=request.getParameter("center");
    Bean b=new Bean();
    b.setName(name);
    b.setAge(age);
    b.setAddress(location);
    b.setEmail(email);
    b.setMobile(mobile);
    b.setPassword(bloodGroup);
    b.setTemp(bloodUnits);
    b.setCenter(center);
    
    userDonateBlood obj=new userDonateBlood();
    int value=0;
    String q1="SELECT * FROM donate WHERE email='"+email+"'";
    ResultSet rs=obj.Retrieve(q1);
    if(rs.next()){
    String q2="UPDATE donate SET name=?,email=?,bloodgroup=?,location=?,mobile=?,age=?,bloodunits=?,center=? WHERE email='"+email+"'";
    value=obj.Register(b, q2);
    if(value>0){
    request.getSession();
    session.setAttribute("success", "Blood Donation Request Sent Successfully!");
    response.sendRedirect("add-blood.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Failed to Send Blood Donation Request!");
    response.sendRedirect("add-blood.jsp");
    }
    }else{
    String query="INSERT INTO donate(name,email,bloodgroup,location,mobile,age,bloodunits,center) VALUES(?,?,?,?,?,?,?,?)";
    
    int rowCount=obj.Register(b, query);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Blood Donation Request Sent Successfully!");
    response.sendRedirect("add-blood.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Failed to Send Blood Donation Request!");
    response.sendRedirect("add-blood.jsp");
    }
    }
    
    

%>
