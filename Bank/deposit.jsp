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
 int amount = Integer.parseInt(request.getParameter("amount"));
 
 if(amount>0){
   
           String phone = "";
		
		 Cookie ck[]=request.getCookies();  
		 for(int i=0;i<ck.length;i++){   
		 
		   
		 if(ck[i].getName().equals("p")){
		    phone =   ck[i].getValue() ; 	  
		  }  }
		  
		  

	
		Table table = new Table("ACC");
	    SelectQueryImpl query = new SelectQueryImpl(table);
	    Column col = Column.getColumn("ACC","*");
	    query.addSelectColumn(col);
	int bal = 0;

	   
	    Column phone1 = Column.getColumn("ACC", "PHONE");
	      Criteria cri = new Criteria(phone1, phone, QueryConstants.EQUAL);
	     
	   
	    query.setCriteria(cri);
	    Persistence pers = (Persistence)BeanUtil.lookup("Persistence");  
			 DataObject dob = (pers.get(query));
	     Iterator<Row> row =  dob.getRows("ACC");
		
			while(row.hasNext()){
				Row r = row.next();
				bal = r.getInt("BAL");
			}
		
		
		
		
		
		amount += bal;
		
		

	     Column empID = Column.getColumn("ACC", "PHONE");
	UpdateQuery up = new UpdateQueryImpl("ACC");
	up.setUpdateColumn("BAL" , amount);

	Criteria cri3 = new Criteria(empID, phone, QueryConstants.EQUAL);
	up.setCriteria(cri3);
	pers.update(up);

	 response.sendRedirect("index.jsp");
 
 }else{
  JFrame f=new JFrame();  
    JOptionPane.showMessageDialog(f,"Please  enter valid amount!");  
    
 
 response.sendRedirect("index.jsp");
 }
 
%>


</body>
</html>
