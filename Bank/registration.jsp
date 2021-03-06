<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<%@ page import="com.adventnet.persistence.*, com.adventnet.mfw.bean.BeanUtil,com.adventnet.ds.query.InsertQueryImpl, java.sql.*, com.adventnet.ds.query.DeleteQueryImpl,com.adventnet.ds.query.SortColumn, com.adventnet.ds.query.*, java.util.*,com.adventnet.db.api.RelationalAPI"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Register</title>
<style>
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
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #060c21;
}
.form
{
    position: relative;
    background: #060c21;
    border: 1px solid #000;
    width: 390px;
    padding: 40px 40px 60px;
    border-radius: 10px;
    text-align: center;
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
.form .input .inputBox label, .inputBox select
{
    display: block;
    color: #fff;
    margin-bottom: 5px;
    font-size: 18px;
    letter-spacing: 1px;
}

.form .input .inputBox input , .inputBox select
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
.forgot
{
    margin-top: 10px;
    color: #fff;
    font-size: 14px;
    letter-spacing: 1px;
}
.forgot a
{
    color: #ff0800;
}

</style>
</head>
<body>

<div align="center">
<form action="Upload.jsp">



<div class="form">
            <h2>Register</h2>
            <div class="input">
                <div class="inputBox">
                    <label for="">User Name</label>
                    <input type="text" name="name" autocomplete="off">
                </div>
                
                
               <div class="inputBox">
                    <label for="">Phone</label>
                    <input type="text" name="phone" autocomplete="off">
                </div>
                
                <div class="inputBox">
                    <label for="">AADHAR</label>
                    <input type="text" name="aadhar">
                </div>
                
                
                
                
                <center id="loading" style="display: none;margin-top:40px;">
<div class="spinner-grow text-primary" role="status">
  <span class="sr-only"></span>
</div>
<div class="spinner-grow text-secondary" role="status">
  <span class="sr-only"></span>
</div>
<div class="spinner-grow text-success" role="status">
  <span class="sr-only"></span>
</div>
<div class="spinner-grow text-danger" role="status">
  <span class="sr-only" ></span>
</div>
</center>
                
                
                <div class="inputBox">
                    <label for="">GENDER</label>
                     <select name="gender" id="dob">
    <option value="MALE">MALE</option>
    <option value="FEMALE">FEMALE</option>
    <option value="OTHERS">OTHERS</option></select>
                </div>
                <div class="inputBox">
                    <label for="">DOB</label>
                     <input type="date" name="dob" autocomplete="off">
                    
   
  
                </div>
                
                
                
              
                <div class="inputBox">
                    <label for="">Password</label>
                    <input type="password" name="password">
                </div>
              
              
                <div class="inputBox">
                    <input type="submit" name="register"  id="button"> 
                </div>
            </div>
           
            
        </div>


</form>












</div>




</body>
</html>
