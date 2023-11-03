<%@page import="com.codebook.user.userRegisteration"%>
<%@page import="java.util.*,java.sql.*"%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String query="SELECT * FROM user WHERE email='"+email+"' && password='"+password+"'";
    
    userRegisteration obj=new userRegisteration();
    ResultSet rs=obj.Retrieve(query);
    if(rs.next()){
        session.setAttribute("email", email);
        request.getSession();
    session.setAttribute("success", "Login Success");
        response.sendRedirect("user/main-dashboard.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "You have not yet Registered or Credentials are wrong!");
    response.sendRedirect("login.jsp");
    }

%>