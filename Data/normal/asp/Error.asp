<!--#include file="inc/Conn.asp"-->
 
 <%
Public Function ServerPath 
Dim Path
Dim Pos
Path=Request.ServerVariables("script_name")
Pos=InStrRev(Path,"/")
ServerPath=Left(Path,Pos)
End Function
%> 

<%
Response.Write "<script Language=Javascript>alert(' ��������!���ܵ�½�Ѿ���ʱ�������µ�½.....');location.href = '"&ServerPath&"';</script>"
%>