<!--#include File="inc/Conn.asp" -->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ҵ��Ϣ����</title>
<link rel="stylesheet" href="css/main.css">
</head>
<script language="javascript"> 
<!-- 
function CheckAll(){ 
 for (var i=0;i<eval(form.elements.length);i++){ 
  var e=form.elements[i]; 
  if (e.name!="allbox") e.checked=form.allbox.checked; 
 } 
} 
--> 
</script> 
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0"  class="list_table">
  <tr> 
    <th height="34" align="center"><strong>��ҵ��Ϣ</strong></th>
  </tr>
  <tr> 
  </tr>
</table>
<br>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="list_table">
  <tr>
    <th width="40">ѡ��</th>
    <th width="40"> ID��</th>
    <th width="250">��Ϣ����</th>
    <th width="100">����ʱ��</th>
	<th width="100">�����</th>
    <th width="50">�޸�</th>
    <th width="50">ɾ��</th>
  </tr>
  <form id="form" name="form" method="post" action="?">
    <%
Page=Request("Page")
PageSize = 15
 

sql="select * from about order by id desc" 
Set rs = Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,3

Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)<1 Then Page=1
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum>0 Then Rs.AbsolutePage=Page
Count=0
Do While not Rs.Eof And Count<Rs.PageSize
%>
    <tr  bgcolor="#ffffff" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>
      <td><input name="ID" type="checkbox" id="ID" value="<%=rs("id")%>" /></td>
      <td><%=rs("id")%></td>
      <td><a href="../about.asp?id=<%=rs("id")%>"  title="<%=rs("aboutname")%>" target="_blank"><%=left(rs("aboutname"),40)%></a></td>
      <td><div align="center"><%=rs("sj")%></div></td>
      <td><div align="center"><%=rs("user")%></div></td>
	  <td><div align="center"><a href="admin_about_edit.asp?id=<%=rs("id")%>">�޸�</a></div></td>
      <td align="center"><input type="button" class="btn btn82 btn_del" name="button" value="ɾ��" onClick="javascript:if(confirm('�ף�ȷ��ɾ����ɾ���󲻿ɻָ�!')){window.location.href='?id=<%=rs("id")%>&amp;del=ok';}else{history.go(0);}"  /></td>
    </tr>
    <%
Rs.Movenext
Count=Count+1
Loop
%>
    <tr bgcolor="#ffffff" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>
      <td><input name="allbox" type="checkbox" id="allbox" onClick="CheckAll()" /></td>
      <td>ȫѡ</td>
      <td><input name="submit2" type="submit" class="input-text"    onClick="javascript:if(confirm('�ף�ȷ��ɾ����ɾ���󲻿ɻָ�!'))form.action='?action=del';" value="ɾ��"   /></td>
      <td colspan="7">&nbsp;</td>
    </tr>
  </form>
</table>
<div class="pagination">
                  <ul><%
Response.Write "<Form Method=""Post"" action=""?"">"
Response.Write "<li class=""disabled""><span>��"& Page &"ҳ/��"& pgnum &"ҳ</span></li> "
If Page=1 Then
Response.Write "<li class=""disabled""><span>��ҳ</span></li> <li class=""disabled""><span>��һҳ</span></li> "
Else
Response.Write "<li><a href=""?Page=1&"">�� ҳ</a></li>"
Response.Write "<li><a href=""?Page="& Page-1 &""">��һҳ</a></li>"
End If
If Rs.PageCount-Page<1 Then
Response.Write "<li class=""disabled""><span>��һҳ</span></li><li class=""disabled""><span>β ҳ</span></li>"
Else
Response.Write "<li><a href=""?Page="& Page+1 &""">��һҳ</a></li> "
Response.Write "<li><a href=""?Page="& Rs.PageCount &""">β ҳ</a></li>"
End If
Response.Write " <li class=""disabled""><span>��<font color=#ff0000> "& Pagingnum &" </font>��</span></li> "
Response.Write " <li class=""disabled""><span>ת����</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
Response.Write "<Input Type=""Submit"" class=""input-text"" value=""��ת"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
%></ul>
</div>
</body>
</html>
<%
if request("del")="ok" then
set rs=server.createobject("adodb.recordset")
id=Request.QueryString("id")
sql="select * from about where id="&id
rs.open sql,conn,2,3
rs.delete
rs.update
Response.Write "<script>alert('��ǰ��Ϣɾ���ɹ���');window.location.href='admin_about.asp';</script>"
end if 



conn.close
set conn=nothing%>