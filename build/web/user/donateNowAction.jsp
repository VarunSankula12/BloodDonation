<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.codebook.user.userRequestBlood"%>
<%@page import="com.codebook.user.userDonateBlood"%>
<%@page import="com.codebook.bean.Bean"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String name=request.getParameter("name");
    String dbloodgroup=request.getParameter("bloodgroup");
    String dlocation=request.getParameter("location");
    String dmobile=request.getParameter("mobile");
    String dage=request.getParameter("age");
    String dbloodunits=request.getParameter("bloodUnits");
    String rbloodgroup=request.getParameter("rbloodgroup");
    String rlocation=request.getParameter("rlocation");
    String rbloodunits=request.getParameter("rbloodunits");
    String rmobile=request.getParameter("rmobile");
    String rdate=request.getParameter("rdate");
    String email=(String)session.getAttribute("email");
    String ddate=request.getParameter("ddate");
    String temp="Scheduled";
    Bean b=new Bean();
    b.setName(name);
    b.setEmail(email);
    b.setCenter(dbloodgroup);
    b.setAddress(dlocation);
    b.setMobile(dmobile);
    b.setAge(dage);
    b.setInfo(dbloodunits);
    b.setTemp3(ddate);
    b.setTemp2(rbloodgroup);
    b.setPassword(rlocation);
    b.setFlat(rbloodunits);
    b.setTemp(rmobile);
    b.setVal(rdate);
    String olddate="";
    userRequestBlood  e1=new userRequestBlood();
    String sql="SELECT * FROM donate WHERE mobile='"+b.getMobile()+"'";
    ResultSet result=e1.Retrieve(sql);
    if(result.next()){
        olddate=result.getString("Date");
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
            userDonateBlood obj=new userDonateBlood();
            int rowCount=obj.donateBlood(b, query);
            if(rowCount>0){
            request.getSession();
            session.setAttribute("success", "Donation Successfull!");
            response.sendRedirect("donor-dashboard.jsp");
            }else{
                request.getSession();
                session.setAttribute("failed", "Failed to Donate blood!");
                response.sendRedirect("donor-dashboard.jsp");
            }
        }else{
                request.getSession();
                session.setAttribute("failed", "Time period that is 3 months is not passed from your last donation.");
                response.sendRedirect("donor-dashboard.jsp");
        }
    }else{
        String q1="SELECT * FROM donatenow WHERE donormobile='"+b.getMobile()+"' && status='Accepted'";
    ResultSet rs=e1.Retrieve(q1);
    if(rs.next()){
        olddate=rs.getString("donationDate");
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
            userDonateBlood obj=new userDonateBlood();
            int rowCount=obj.donateBlood(b, query);
            if(rowCount>0){
            request.getSession();
            session.setAttribute("success", "Donation Successfull!");
            response.sendRedirect("donor-dashboard.jsp");
            }else{
            request.getSession();
                session.setAttribute("failed", "Failed to Donate blood!");
                response.sendRedirect("donor-dashboard.jsp");
            }
        }else{
        request.getSession();
                session.setAttribute("failed", "Time period that is 3 months is not passed from your last donation.");
                response.sendRedirect("donor-dashboard.jsp");
        }
    }else{
        String query="INSERT INTO donatenow(donorname,donoremail,donorbloodgroup,donorlocation,donormobile,donorage,donorbloodunits,donationDate,recepientbloodgroup,recepientlocation,recepientrequnits,recepientmobile,reqdate) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            userDonateBlood obj=new userDonateBlood();
            int rowCount=obj.donateBlood(b, query);
            if(rowCount>0){
            request.getSession();
            session.setAttribute("success", "Donation Successfull!");
            response.sendRedirect("donor-dashboard.jsp");
            }else{
            request.getSession();
                session.setAttribute("failed", "Failed to Donate blood!");
                response.sendRedirect("donor-dashboard.jsp");
            }
        }
    }
    
    
%>