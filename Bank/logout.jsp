<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.adventnet.persistence.*,javax.swing.*, com.adventnet.mfw.bean.BeanUtil,com.adventnet.ds.query.InsertQueryImpl, java.sql.*,javax.servlet.http.Cookie, com.adventnet.ds.query.DeleteQueryImpl,com.adventnet.ds.query.SortColumn, com.adventnet.ds.query.*, java.util.*,com.adventnet.db.api.RelationalAPI"  %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





<%


Cookie ck=new Cookie("p","");  
		  ck.setMaxAge(0);
	         response.addCookie(ck);  
	         
	          response.sendRedirect("login.jsp");
	         
	         %>
	         
	         
</body>
	         
 </html>
