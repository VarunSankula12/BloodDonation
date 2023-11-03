<%@page import="com.codebook.bean.Bean"%>
<%@page import="com.codebook.admin.adminDao"%>
<%
        String email=request.getParameter("email");
        String name=request.getParameter("name");
        String bloodgroup=request.getParameter("bloodgroup");
        String location=request.getParameter("location");
        String mobile=request.getParameter("contact");
        String age=request.getParameter("age");
        String bloodunits=request.getParameter("bloodUnits");
        Bean b=new Bean();
        b.setName(name);
        b.setEmail(email);
        b.setTemp(bloodgroup);
        b.setAddress(location);
        b.setMobile(mobile);
        b.setAge(age);
        b.setTemp2(bloodunits);
        
        String query="UPDATE donate SET name=?,email=?,bloodgroup=?,location=?,mobile=?,age=?,bloodunits=? WHERE email='"+email+"'";
        adminDao obj=new adminDao();
        int rowCount=obj.UpdateDetails(b, query);
        if(rowCount>0){
        request.getSession();
        session.setAttribute("success", "Details Updation Successful!");
        response.sendRedirect("edit-blood.jsp");
        }else{
            request.getSession();
        session.setAttribute("failed", "Details Updation Failed!");
        response.sendRedirect("edit-blood.jsp");
        }
%>