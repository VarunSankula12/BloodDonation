<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.codebook.user.userDonateBlood"%>
<%@page import="com.codebook.bean.Bean"%>
<%@page import="java.sql.*"%>
<%
    String name=request.getParameter("name");
    String bloodGroup=request.getParameter("bloodGroup");
    String location=request.getParameter("location");
    String mobile=request.getParameter("mobile");
    String bloodUnits=request.getParameter("bloodUnits");
    String age=request.getParameter("age");
    String email=(String)session.getAttribute("email");
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
    
    String olddate="";
    userDonateBlood obj=new userDonateBlood();
    int value=0;
    String q1="SELECT * FROM donate WHERE mobile='"+b.getMobile()+"'";
    ResultSet rs=obj.Retrieve(q1);
    if(rs.next()){
    olddate=rs.getString("Date");
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date dbDate = dateFormat.parse(olddate);


        // Calculate the difference in months
        Calendar today = Calendar.getInstance();
        Calendar lastDonationDate = Calendar.getInstance();
        lastDonationDate.setTime(dbDate);

        int monthsDifference = 0;

        while (lastDonationDate.before(today)) {
            lastDonationDate.add(Calendar.MONTH, 1);
            if (lastDonationDate.before(today)) {
                monthsDifference++;
            }
        }

        if (monthsDifference >= 3) {
            String q2 = "UPDATE donate SET name=?,email=?,bloodgroup=?,location=?,mobile=?,age=?,bloodunits=?,center=? WHERE email='" + email + "'";
            value = obj.Register(b, q2);
            if (value > 0) {
            request.getSession();
            session.setAttribute("success", "Donation Successfull!");
            response.sendRedirect("donate.jsp");
            } else {
            request.getSession();
                session.setAttribute("failed", "Failed to Donate blood!");
                response.sendRedirect("donate.jsp");
            }
    }else{
    request.getSession();
                session.setAttribute("failed", "Time period that is 3 months is not passed from your last donation.");
                response.sendRedirect("donate.jsp");
    }
    }else{
        String sql="SELECT * FROM donatenow WHERE donormobile='"+b.getMobile()+"' && status='Accepted'";
    ResultSet result=obj.Retrieve(sql);
    if(result.next()){
        olddate=result.getString("donationDate");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date dbDate = dateFormat.parse(olddate);


        // Calculate the difference in months
        Calendar today = Calendar.getInstance();
        Calendar lastDonationDate = Calendar.getInstance();
        lastDonationDate.setTime(dbDate);

        int monthsDifference = 0;

        while (lastDonationDate.before(today)) {
            lastDonationDate.add(Calendar.MONTH, 1);
            if (lastDonationDate.before(today)) {
                monthsDifference++;
            }
        }

        if (monthsDifference >= 3) {
            String query="INSERT INTO donatenow(donorname,donoremail,donorbloodgroup,donorlocation,donormobile,donorage,donorbloodunits,donationDate,recepientbloodgroup,recepientlocation,recepientrequnits,recepientmobile,reqdate) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            int rowCount=obj.donateBlood(b, query);
            if(rowCount>0){
            request.getSession();
            session.setAttribute("success", "Donation Successfull!");
            response.sendRedirect("donate.jsp");
            }else{
            request.getSession();
                session.setAttribute("failed", "Failed to Donate blood!");
                response.sendRedirect("donate.jsp");
            }
        }else{
        request.getSession();
                session.setAttribute("failed", "Time period that is 3 months is not passed from your last donation.");
                response.sendRedirect("donate.jsp");
        }
    }else{
        String query="INSERT INTO donate(name,email,bloodgroup,location,mobile,age,bloodunits,center) VALUES(?,?,?,?,?,?,?,?)";
    
        int rowCount=obj.Register(b, query);
        if(rowCount>0){
        request.getSession();
            session.setAttribute("success", "Donation Successfull!");
            response.sendRedirect("donate.jsp");
        }else{
        request.getSession();
                session.setAttribute("failed", "Failed to Donate blood!");
                response.sendRedirect("donate.jsp");
            }
        }
    }
    
    

%>
