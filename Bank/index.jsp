<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.adventnet.persistence.*, com.adventnet.mfw.bean.BeanUtil,com.adventnet.ds.query.InsertQueryImpl, java.sql.*,javax.servlet.http.Cookie, com.adventnet.ds.query.DeleteQueryImpl,com.adventnet.ds.query.SortColumn, com.adventnet.ds.query.*, java.util.*,com.adventnet.db.api.RelationalAPI"  %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Oswald&display=swap');
*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Oswald', sans-serif;
}
body
{
    
    background: #060c21;
}
.form
{

    margin-left:38%;
    position: relative;
    background: #060c21;
    border: 1px solid #000;
    width: 350px;
    padding: 40px 40px 60px;
    border-radius: 10px;
    text-align: center;
    margin-top:70px;
}
.form::before
{
    content: '';
    position: absolute;
    top: -2px;
    right: -2px;
    bottom: -2px;
    left: -2px;
    background: linear-gradient(315deg,#e91e63,#5d02ff);
    z-index: -1;
    transform: skew(2deg,1deg);
    border-radius: 10px;
}
.form h2
{
    color: #fff;
    font-weight: 500;
    text-transform: uppercase;
    letter-spacing: 5px;
}
.form .input
{
    margin-top: 40px;
    text-align: left;
}
.form .input .inputBox
{
    margin-top: 10px;
}
.form .input .inputBox label
{
    display: block;
    color: #fff;
    margin-bottom: 5px;
    font-size: 18px;
    letter-spacing: 1px;
}
.form .input .inputBox input
{
    position: relative;
    width: 100%;
    height: 40px;
    border: none;
    outline: none;
    padding: 5px 15px;
    background:linear-gradient(315deg,#e91e63,#5d02ff) ;
    color: #fff;
    font-size: 18px;
    border-radius: 10px;
}
.form .input .inputBox input[type="submit"]
{
    cursor: pointer;
    margin-top: 20px;
    letter-spacing: 1px;
}
.form .input .inputBox input[type="submit"]:hover
{
    background:linear-gradient(315deg,#5d02ff,#e91e63) ;
}
.form .input .inputBox input[type="submit"]:active
{
    color: rgba(255, 255, 255, 0.521);
    background:linear-gradient(315deg,#e91e6271,#5f02ff8c) ;
}




</style>
</head>
<body>

 
   
   
   <%
   
String phone = "";
		
		 Cookie ck[]=request.getCookies();  
		 for(int i=0;i<ck.length;i++){   
		 
		   
		 if(ck[i].getName().equals("p")){
		    phone =   ck[i].getValue() ; 	  
		  }  }
		 
	if(phone.equals("")){
	   response.sendRedirect("login.jsp");
	}	 
   
   
   
   
   
   
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
        	
    
 
   
   
    %>
    
    <div>   <a style="text-decoration:none;color:red;float:right;margin-right:100px;" href="logout.jsp"> Logout </a></div>
    
    
  
   <%= "<h1 style=\"color:white;margin:10px 0 60px 38%;\">Balance Amount : "+bal +" Rs</h1>"%> 
   
   
   
   
   
   
  
  
  
   <form action="deposit.jsp" >
 <div class="form">
            <h2> 
  Deposit : </h2>
            <div class="input">
                <div class="inputBox">
                    <label for="">Amount </label>
                    <input type="number" name="amount" value=0  autocomplete="off">
                </div>
                <br>
                <div class="inputBox">
                    <input type="submit" name="" value="Deposit"> 
                </div>
            </div>
            
        </div>

</form>

   
   
   
   
   
   
  <form action="withdraw.jsp" >
 <div class="form">
            <h2> 
  Withdraw : </h2>
            <div class="input">
                <div class="inputBox">
                    <label for="">Amount </label>
                    <input type="number" name="amount" value=0  autocomplete="off">
                </div>
                <br>
                <div class="inputBox">
                    <input type="submit" name="" value="Withdraw"> 
                </div>
            </div>
            
        </div>

</form>
  
  
  
 
  
   
   
<form action="transfer.jsp" >
 <div class="form">
            <h2> 
  Amount Transfer : </h2>
            <div class="input">
                <div class="inputBox">
                    <label for="">Phone Number </label>
                    <input type="number" name="phone" value=0  autocomplete="off">
                </div>
                <div class="inputBox">
                    <label for="">Amount </label>
                    <input type="number" name="amount" value=0  autocomplete="off">
                </div>
                <br>
                <div class="inputBox">
                    <input type="submit" name="" value="Transfer"> 
                </div>
            </div>
            
        </div>

</form>
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
     

</body>
</html>
