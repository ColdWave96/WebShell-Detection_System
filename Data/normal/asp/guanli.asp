<!--#include file="include/CheckPost.asp"-->
<!--#include file="include/nowshop.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>

<script language=javascript src=../include/mouse.js></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="style.css" type=text/css rel=stylesheet>
<script language="JavaScript" type="text/JavaScript">
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }
</script>
<style type="text/css">
<!--
.back_southidc {BACKGROUND-IMAGE:url(images/titlebg.gif);COLOR:000000;}
.table_southidc {BACKGROUND-COLOR: A4B6D7;}
.tr_southidc {BACKGROUND-COLOR: EFF3F9;}
-->
</style>
</head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<BODY bgcolor="#D9EAFC">

<%
action=request("action")
if action="" then%>

<table height="5"><tr><td></td></tr></table>
<table height="5"><tr><td></td></tr></table>

<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="1" class="table_southidc">
	<form name=Prodlist action=guanli.asp method=post>
	  <tr bgcolor="#f4f5fd">
	    <td height="25" colspan="6" align=center background="../product/images/titlebg.gif" ><b>������Ϣ����</b></td>
      </tr>
	  <tr bgcolor="#f4f5fd">	
	<td width=8% align=center><strong>ѡ</strong></td>
	<td width=12% height=15 align=center><strong>����</strong></td> 
	<td width=45% height="20" align=center><strong>���ݣ��༭��ظ���</strong></td>
	<td width=15% align=center><strong>����</strong></td>
	<td width=10% align=center><strong>״̬</strong></td>
	<td width=10% align=center><strong>���</strong></td>
	</tr>
<%
dim rs,msg_per_page
dim sql
msg_per_page = 20 'ÿҳ��ʾ��¼��
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from book order by top desc,Postdate desc"

rs.cursorlocation = 3 
rs.pagesize = msg_per_page 'ÿҳ��ʾ��¼��
rs.open sql,conn,1,1 

	if rs.eof and rs.bof then
	response.write "<tr bgcolor=#ffffff><td colspan=6 align=center><BR>��ʱû������<BR><BR></td></tr>"
	end if

	if not (rs.eof and rs.bof) then '����¼���Ƿ�Ϊ��
	totalrec = RS.RecordCount '�ܼ�¼����
	if rs.recordcount mod msg_per_page = 0 then '������ҳ��,recordcount:���ݵ��ܼ�¼��
	n = rs.recordcount\msg_per_page 'n:��ҳ��
	else 
	n = rs.recordcount\msg_per_page+1 
	end if 

	currentpage = request("page") 'currentpage:��ǰҳ
	If currentpage <> "" then
		currentpage = clng(currentpage)
		if currentpage < 1 then 
			currentpage = 1
		end if 
		if err.number <> 0 then 
			err.clear
			currentpage = 1
		end if
	else
		currentpage = 1
	End if 
	if currentpage*msg_per_page > totalrec and not((currentpage-1)*msg_per_page < totalrec)then 
		currentPage=1
	end if
	rs.absolutepage = currentpage 'absolutepage������ָ��ָ��ĳҳ��ͷ
	rowcount = rs.pagesize 'pagesize������ÿһҳ�����ݼ�¼��
	dim i
	dim k

	Do while not rs.eof and rowcount>0
	content=rs("Comments")	
	replay=rs("replay")
	UserName=rs("UserName")

	if rs("top")="0" then
	Response.write "<tr  class=tr_southidc><td align=center><input type='checkbox' value='"&rs("ID")&"' name=id>"
	else
	Response.write "<tr class=tr_southidc><td align=center height=25><font color=red title='�̶���Ϣ����ֱ��ɾ�������Ƚ���̶�������ɾ��'>TOP</font>"
	end if
	Response.write "</td><td>"&UserName&"</td><td><a href='guanli.asp?action=replay&id="&rs("ID")&"'>"
	response.write left(server.htmlencode(content),50)
	response.write "</a></td><td  align=center>"&split(rs("Postdate"))(0)&"</td><td  align=center>"
	if Isnull(Replay) then
		response.write "<font color=red>δ�ظ�</font>"
	else				
		response.write "�ѻظ�"
	end if
	response.write "</td><td align=center>"
	if rs("Online")="0" then response.write "<font color=red>����</font>" else response.write "����" 	end if
	response.write "</td></tr>"
	rowcount=rowcount-1
	rs.movenext		
	loop
	end if

	rs.close
	conn.close
	set rs=nothing
	set conn=nothing
%>
<tr bgcolor="#FFFFFF"><td colspan=6 class="tr_southidc"><input type='checkbox' name=chkall onclick='CheckAll(this.form)'> ȫѡ 
	<input type="submit" name="action" value="ɾ��" onClick="{if(confirm('�ò������ɻָ���\n\nȷʵɾ��ѡ�������ԣ�')){this.document.Prodlist.submit();return true;}return false;}"> 	
</td></tr></form></table>
<%
call listPages()
end if

if action="ɾ��" then
	delid=replace(request("id"),"'","")
	call delfeedback()
end if

if action="replay" then
	id=request("id")
	call detailfeedback()

end if

%></td></tr></table>
</td></tr> </table>
</body></html>

<%
sub delfeedback()
	if delid="" or isnull(delid) then

	response.write "<script language='javascript'>"
	response.write "alert('�����ˣ���ʲôҲû��ѡ��');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end

	else
		conn.execute("delete from book where ID in ("&delid&")")
		conn.close
		set conn=nothing

	response.write "<script language='javascript'>"
	response.write "alert('�����ɹ���ѡ����������ɾ����');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end

	end if
end sub

sub detailfeedback()
if id="" then
	response.write "<script language='javascript'>"
	response.write "alert('�����ˣ��޴����Ա�ţ�');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end
end if

	'�޸���������
if request("send")="ok" then

		if trim(request.form("comments"))="" then 
		response.write "<script language='javascript'>"
		response.write "alert('�����ˣ��������ݲ���Ϊ�գ�');"
		response.write "location.href='javascript:history.go(-1)';"
		response.write "</script>"
		response.end
		end if

	set rs=server.createobject("adodb.recordset")
	sql = " select * from book where ID="&id
	rs.open sql,conn,1,3

		if not (rs.eof and rs.bof) then
		rs("UserMail")=request.form("UserMail")
		rs("url")=request.form("url")
		rs("qq")=request.form("qq")
		rs("comments")=request.form("comments")
		rs("Replay")=replace(request.form("Replay"),vbCRLF,"<BR>")
		rs("Online")=request("Online")
		rs("top")=request("top")
		rs.update
		end if
	rs.close

	response.write "<script language='javascript'>"
	response.write "alert('�����ɹ��������޸Ļ�ظ�һ�����ԣ�');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end
end if

	'��ʾ��ϸ����
	set rs = server.createobject("adodb.recordset")
	sql = "select * from book where ID="&id
	rs.open sql,conn,1,1

		if rs.eof and rs.bof then 
		response.write "<script language='javascript'>"
		response.write "alert('�����ˣ��޴����ԣ�');"
		response.write "location.href='guanli.asp';"
		response.write "</script>"
		response.end
		end if

		if not (rs.eof and rs.bof) then 
			Comments=replace(rs("Comments"),"<BR>",vbCRLF)
			if rs("replay")<>"" then replay=replace(rs("Replay"),"<BR>",vbCRLF) else repley=""  end if

		%>
<br>
<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="1" class="table_southidc">

		 <form name="repl" method="post" action='guanli.asp?action=replay&id=<%=id%>'>
		 <tr >
		   <TD height=25 colspan="2" align="center"  background="../product/images/titlebg.gif"><b>������Ϣ����</b></TD>
		   </tr>
		 <tr  class="tr_southidc"><TD align="right" WIDTH=20% height=25>������IP��ַ</TD><td><%=rs("IP")%></td></tr>
		 <tr  class="tr_southidc"><TD align="right" height=25>��������</TD><td><%=rs("PostDate")%></td></tr>		 
		 <tr class="tr_southidc"><TD align="right" height=25>����������</TD><td><%=rs("UserName")%></td></tr>
		<tr  class="tr_southidc"><TD align="right" >����</TD><td><input type=text name=UserMail value="<%=rs("UserMail")%>" size=35 maxlength=100></td></tr>
		<tr  class="tr_southidc"><TD align="right" >��ַ</TD><td><input type=text name=url value="<%=rs("url")%>" size=35 maxlength=100></td></tr>
		<tr  class="tr_southidc"><TD align="right" >��ѶQQ</TD><td><input type=text name=qq value="<%=rs("qq")%>" size=35 maxlength=100></td></tr>
		 <tr  class="tr_southidc"><TD align="right" >��������</TD><td><textarea style="overflow:auto" name="comments" cols="60" rows="8"><%=Comments%></textarea></td></tr>
		 <tr  class="tr_southidc"><TD align="right"  valign=top>�ظ�����</TD><td><textarea style="overflow:auto" name="Replay" cols="60" rows="8"><%=replay%></textarea>&nbsp;</td></tr>
		<tr class="tr_southidc"><TD align="right" width=20%>�Ƿ�̶�</TD><td><input type="radio" name="top" value="1" <%if rs("top")="1" then%>checked<%end if%>>
			  �̶�<input type="radio" name="top" value="0" <%if rs("top")="0" then%>checked<%end if%>>
			  ��ͨ </td></tr>

		<tr  class="tr_southidc"><TD align="right" >�Ƿ�����</TD><td><input type="radio" name="Online" value="0" <%if rs("Online")="0" then%>checked<%end if%>>
			  ����<input type="radio" name="Online" value="1" <%if rs("Online")="1" then%>checked<%end if%>>
			  ���� </td></tr>
			<TR  class="tr_southidc"><TD align="right" >&nbsp;<INPUT TYPE="hidden" name=send value=ok></TD><TD>
				<input type="submit" name="action" value=" �� �� "></TD></TR>
			</form></TABLE>
					  <table height="5"><tr><td></td></tr></table>
		<%
		end if	

	rs.close
	set rs=nothing

end sub


sub listPages() 
if n <= 1 then exit sub 
%>
<p> >> 
<%if currentpage = 1 then%>
<font color=darkgray>��ҳ ǰҳ</font>
<%else%> 
<font color=black face="arial"><a href="<%=request.ServerVariables("script_name")%>?page=1">
��ҳ</font></a>
 <a href="<%=request.ServerVariables("script_name")%>?page=<%=currentpage-1%>">
<font color=black face="arial" >ǰҳ</a></font>
<%end if%>
<%if currentpage = n then%> 
<font color=darkgray face="arial" >��ҳ ĩҳ</font>
<%else%> 
<font color=black face="arial" ><a href="<%=request.ServerVariables("script_name")%>?page=<%=currentpage+1%>">��ҳ</a>
 <a href="<%=request.ServerVariables("script_name")%>?page=<%=n%>">ĩҳ</a></font>
<%end if%>
<font color=black face="arial" >
  ��:<%=currentpage%>/<%=n%>ҳ&nbsp;&nbsp;�ܹ�:<%=totalrec%>������ [<%=msg_per_page%>��/ҳ]</font></p>

<%end sub%>

