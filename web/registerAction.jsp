<%@page import="com.codebook.user.userRegisteration"%>
<%@page import="com.codebook.Connection.DynamicImage"%>
<%@page import="com.codebook.bean.Bean"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="com.codebook.user.userRegisteration"%>
<%@page import="java.sql.*"%>
<%
    Bean b=new Bean();
    
     boolean isMultipart = ServletFileUpload.isMultipartContent(request);
     
    if (isMultipart) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> items = upload.parseRequest(request);
        for(FileItem item: items){
        String fieldName=item.getFieldName();
        String fieldValue = item.getString();
         if (fieldName.equals("file")) {
         Blob img=DynamicImage.getBlobProfile(item);
            b.setBlob(img);
            
    }
            if (fieldName.equals("name")) {
                b.setName(fieldValue);
            } else if (fieldName.equals("email")) {
                b.setEmail(fieldValue);
            } else if (fieldName.equals("mobile")) {
                b.setMobile(fieldValue);
            }  else if (fieldName.equals("address")) {
                b.setAddress(fieldValue);
            }  else if (fieldName.equals("password")) {
                b.setPassword(fieldValue);
            }  
        }
    
    userRegisteration obj=new userRegisteration();
    
    String q1="SELECT * FROM user WHERE email='"+b.getEmail()+"'";
    ResultSet rs=obj.Retrieve(q1);
    if(rs.next()){
    request.getSession();
    session.setAttribute("warning", "User Already Exists!");
    response.sendRedirect("register.jsp");
    }else{
     String query="insert into user values(?,?,?,?,?,?)";
    
    int rowCount=obj.Register(b, query);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Registration Successful!");
    response.sendRedirect("login.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Registration Failed!");
    response.sendRedirect("register.jsp");
    }
    }
    }
%>