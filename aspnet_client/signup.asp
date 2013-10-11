<html> 
<head> 
</head> 
<body> 

<p>Thank you for signing my guestbook...</p> 
<FORM METHOD="POST"> 
<% 
Set cn = Server.CreateObject("ADODB.Connection") 
openStr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("admin/~db/~inv.mdb")
 cn.Open openStr 
SQL = "SELECT * FROM tblCust" 
Set record = Server.CreateObject("ADODB.Recordset") 
record.Open sql, cn, 2, 2 
record.AddNew 
record("CustFname") = Request.Form("first") 
record("CustLName") = Request.Form("last")
record("CustID") = Request.Form("username")
record("CustPassword") = Request.Form("password")
record("CustEmail") = Request.Form("email") 
record("CustGender") = Request.Form("sex")
record("CustQuestion") = Request.Form("squestion")
record("CustAnswer") = Request.Form("sanswer")
record("CustAddr1") = Request.Form("address")
record("CustCity") = Request.Form("city")
record("CustZip") = Request.Form("postalcode")
record("CustCountry") = Request.Form("country")
record.Update 
record.Close 
Set record = Nothing 
cn.Close 
Set cn = Nothing 

%> 
<INPUT TYPE="BUTTON" VALUE="Return Home"  
       onClick="location.href='index.html';"> 
<INPUT TYPE="BUTTON" VALUE="Login"  
       onClick="location.href='registration.html';"> 
<INPUT TYPE="BUTTON" VALUE="Confirmation"  
       onClick="location.href='confirmation.asp';">
</form> 
</body> 
</html>  
