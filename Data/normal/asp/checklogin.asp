<!--#include file="inc/conn.asp"-->
<!--#include file="inc/md5.asp"-->
<%
dim admin_name,admin_pass,sql,rs
admin_name=replace(trim(request("admin_name")),"'","")
admin_pass=MD5(trim(request("admin_pass")))
numcode=request("numcode")
if not ISNumeric(numcode) then numcode=1


if admin_name="" then
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>�û�������Ϊ�գ�</li>"
end if
if admin_pass="" then
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>���벻��Ϊ�գ�</li>"
end if


if numcode="" then
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>��֤�벻��Ϊ�գ�</li>"
end if

if  Session("numcode")="" then
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>���¼ʱ������������·��ص�¼ҳ����е�¼��</li>"
end if


if ccur(numcode)<>ccur(Session("numcode")) then
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>�������ȷ�����ϵͳ�����Ĳ�һ�£����������롣</li>"
end if

if FoundErr<>True then


set rs=server.createobject("adodb.recordset")
sql="select * from admin where admin_name='"&admin_name&"' and admin_pass='"&admin_pass&"'"
rs.open sql,conn,3,3
    if rs.eof then
        response.Write("<script language=javascript>alert('�ʺ��������!');history.go(-1)</script>")
    else
		if rs("hits") <>"999999999" then
rs("hits")=rs("hits")+1
rs("date")=Now()
rs.Update
end if
 Session("AdminName")=Rs("admin_name")
 Session("Adminpass")=Rs("admin_pass")
 Response.Redirect ("Manage.asp")
    end if
rs.close
set rs=nothing
conn.close
set conn=nothing
response.end

end if

if FoundErr=True then
	call WriteErrMsg()
end if
%>

<%'****************************************************
'��������WriteErrMsg
'��  �ã���ʾ������ʾ��Ϣ
'��  ������
'****************************************************
sub WriteErrMsg()
	dim strErr
	strErr=strErr & "<html><head><title>������Ϣ</title><meta http-equiv='Content-Type' content='text/html; charset=gb2312'>" & vbcrlf
	strErr=strErr & "<link href='css/login.css' rel='stylesheet' type='text/css'></head><body bgcolor=#AED4F7>" & vbcrlf
	strErr=strErr & "<table cellpadding=2 cellspacing=1 border=0 width=400 class='border' align=center>" & vbcrlf
	strErr=strErr & "  <tr align='center'><td height='22' class='title'><strong>������Ϣ</strong></td></tr>" & vbcrlf
	strErr=strErr & "  <tr><td height='100' class='tdbg' valign='top'><b>��������Ŀ���ԭ��</b><br>" & errmsg &"</td></tr>" & vbcrlf
	strErr=strErr & "  <tr align='center'><td class='tdbg'><a href='index.asp'>&lt;&lt; ���ص�¼ҳ��</a></td></tr>" & vbcrlf
	strErr=strErr & "</table>" & vbcrlf
	strErr=strErr & "</body></html>" & vbcrlf
	response.write strErr
end sub%>
<!-- -->