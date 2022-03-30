<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.adventnet.persistence.*, com.adventnet.mfw.bean.BeanUtil,com.adventnet.ds.query.InsertQueryImpl, java.sql.*,javax.servlet.http.Cookie, com.adventnet.ds.query.DeleteQueryImpl,com.adventnet.ds.query.SortColumn, com.adventnet.ds.query.*, java.util.*,com.adventnet.db.api.RelationalAPI"  %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

String phone = request.getParameter("phone");
String password = request.getParameter("password");


  Table table = new Table("ACC");
    SelectQueryImpl query = new SelectQueryImpl(table);
    Column col = Column.getColumn("ACC","*");
    query.addSelectColumn(col);


   
    Column phone1 = Column.getColumn("ACC", "PHONE");
    Column password1 = Column.getColumn("ACC", "PASSWORD");
    Criteria cri1 = new Criteria(phone1, phone, QueryConstants.EQUAL);
    Criteria cri2 = new Criteria(password1, password, QueryConstants.EQUAL);
    
    Criteria cri = cri1.and(cri2);
    query.setCriteria(cri);
    Persistence pers = (Persistence)BeanUtil.lookup("Persistence");
    DataObject dob = (pers.get(query));

    
   // query.addSelectColumn(Column.getColumn("CLASS","*"));
      //Persistence pers = (Persistence)BeanUtil.lookup("Persistence");

     // DataObject dob = (pers.get(sq));
     
    

    String x = "";
     Iterator<Row> row =  dob.getRows("ACC");
        if(row.hasNext()){  
        	 
        	while(row.hasNext()){
        		Row r = row.next();
        		x = r.getString("PHONE");
        	}
        	
        	Cookie firstName = new Cookie("p",  x);
        	firstName.setMaxAge(60*60*8);   
        	response.addCookie( firstName );
        	
        	
        	response.sendRedirect("index.jsp");
        }else{
        	response.sendRedirect("login.html");
        }
    
%>



</body>
</html>
