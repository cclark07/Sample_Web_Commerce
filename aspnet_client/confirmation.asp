<html>
<head> 
</head> 
<body> 

<% 

openStr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("admin/~db/~inv.mdb")
 Set cn = Server.CreateObject("ADODB.Connection") 
cn.Open openStr, Username, Password 
SQL = "SELECT * FROM tblCust ORDER BY 'CustID' DESC" 
Set record = Server.CreateObject("ADODB.Recordset") 
record.Open sql, cn 
record.MoveFirst 

	 Response.Write"<h3>Thank you for signing up with us " & record("CustFName").Value & " " & record("CustLName").Value & "! Below is the Username you selected:" & "<hr></h3>"

	 Response.Write"<b>Username</b>: " & record("CustID").Value & "<br>" 

  

record.Close 
Set record = Nothing 
cn.Close 
Set cn = Nothing 

%> 

</body> 
</html>  
