<%@page import="com.codebook.user.userDonateBlood"%>
<%@page import="com.codebook.Connection.DynamicImage"%>
<%@page import="com.codebook.bean.Bean"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%
    Bean b=new Bean();
    String password=(String)session.getAttribute("password");
    b.setPassword(password);
   
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
  
   
    String mail=(String)session.getAttribute("email");
  String query="UPDATE user SET name=?,email=?,mobile=?,address=?,upload_image=? WHERE email='"+mail+"'";
    userDonateBlood obj=new userDonateBlood();
    int rowCount=obj.UpdateProfile(b, query);
    if(rowCount>0){
    request.getSession();
    session.setAttribute("success", "Profile Updation Successful!");
    response.sendRedirect("myprofile.jsp");
    }else{
    request.getSession();
    session.setAttribute("failed", "Profile Updation Failed!");
    response.sendRedirect("myprofile.jsp");
    }
    

    }
%>