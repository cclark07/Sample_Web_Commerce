<%
	'Save the entered username and password
	Username = Request.Form("logonuser")	
	Password = Request.Form("logonpassword")
		
	'Build connection with database
	set conn = server.CreateObject ("ADODB.Connection")		
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath ("admin/~db/~inv.mdb")
	set rs = server.CreateObject ("ADODB.Recordset")		
	'Open record with entered username
	rs.Open "SELECT * FROM tblCust where CustId='"& Username &"'", conn, 1 
	
	'If there is no record with the entered username, close connection
	'and go back to login with QueryString
	If rs.recordcount = 0 then
		rs.close
		conn.close
		set rs=nothing
		set conn=nothing
		Response.Redirect("logon_denied.html")
	end if
	
	'If entered password is right, close connection and open mainpage
	if rs("CustPassword") = Password then
		Session("name") = rs("CustID")
		Response.Cookies("ValidUser") ("username") = Username
		Response.Cookies("ValidUser") ("validity") = true
		rs.Close
		conn.Close
		set rs=nothing
		set conn=nothing
		Response.Redirect("logon_verified.html")
				
	'If entered password is wrong, close connection 
	'and return to login with QueryString
	else
		rs.Close
		conn.Close
		set rs=nothing
		set conn=nothing
		Response.Redirect("logon_denied.html")
	end if	

%>
