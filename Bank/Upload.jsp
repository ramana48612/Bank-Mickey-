<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.adventnet.persistence.*, com.adventnet.mfw.bean.BeanUtil,java.sql.*,javax.servlet.http.Cookie,com.adventnet.ds.query.InsertQueryImpl, java.sql.*, com.adventnet.ds.query.DeleteQueryImpl,com.adventnet.ds.query.SortColumn, com.adventnet.ds.query.*, java.util.*,com.adventnet.db.api.RelationalAPI"  %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
String name = request.getParameter("name");
String dob = request.getParameter("dob");
String aadhar = request.getParameter("aadhar");
String phone =request.getParameter("phone");
String gender = request.getParameter("gender");
String password= request.getParameter("password");

int bal = 0;






try {
	 DataObject dobj = new WritableDataObject();
     Row r = new Row("ACC");
      r.set(1,name);
     r.set(2,aadhar);
     r.set(3,phone);
     r.set(4,gender);
     r.set(5,dob);
     r.set(6,bal);
     r.set(7,password);
     
     dobj.addRow(r);      
     Persistence pers = (Persistence)BeanUtil.lookup("Persistence");
     pers.add(dobj);
     
     
     Cookie firstName = new Cookie("p",  phone);
        	firstName.setMaxAge(60*60*8);   
        	response.addCookie( firstName );
     
     
     
	response.sendRedirect("index.jsp");
} catch (Exception e) {
%> 
<script>
   
   alert("hello");

</script>  

<% 
	response.sendRedirect("registration.jsp");
}






%> 



</body>
</html>
