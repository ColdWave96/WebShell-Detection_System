<!--#include file="include/CheckPost.asp"-->
<!--#include file="include/nowshop.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>
<script language=javascript src=../include/mouse.js></script>
<%call checkmanage("08")%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<LINK href="style.css" type=text/css rel=stylesheet>
<script language="JavaScript" type="text/JavaScript">
function CheckAll(form) {
 for (var i=0;i<form.elements.length;i++) {
 var e = form.elements[i];
 if (e.name != 'chkall') e.checked = form.chkall.checked; 
 }
 }
</script><style type="text/css">
<!--
.back_southidc {BACKGROUND-IMAGE:url(images/titlebg.gif);COLOR:000000;}
.table_southidc {BACKGROUND-COLOR: A4B6D7;}
.tr_southidc {BACKGROUND-COLOR: EFF3F9;}
-->
</style>

</head>
<BODY bgcolor="#D9EAFC">
<%
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from bsetup"
rs.open sql,conn,1,3
if request("save")="ok" then
if (not isNumeric(request.form("maxlength"))) or (not isNumeric(request.form("pages"))) or (not isNumeric(request.form("book_jianju"))) then
response.write "<script language='javascript'>"
response.write "alert('�����ˣ�������д���������д�������������ύ��');"
response.write "location.href='javascript:history.go(-1)';"
response.write "</script>"
response.end
end if
rs("view")=request("view")
rs("view1")=request("view1")
rs("maxlength")=request("maxlength")
rs("pages")=request("pages")
rs("pages1")=request("pages1")
rs("html")=request("html")
rs("book_jianju")=request("book_jianju")
rs("mailyes")=request("mailyes")
rs("mailyes1")=request("mailyes1")
rs("huifutishi")=trim(request("huifutishi"))
rs("huifucolor")=trim(request("huifucolor"))
rs("fangan")=request.Form("radiobutton")
if request("bad")<>"" then
bad=request("bad")
bad=replace(bad,vbCRLF,"")
bad=replace(bad," ","")
bad=replace(bad,"��","/")
rs("bad")=bad
end if
rs.update
response.write "<script language='javascript'>"
response.write "alert('�����ɹ������������ѱ��档');"
response.write "location.href='guanli2.asp?action=setup';"
response.write "</script>"
response.end
else
%>
<table height="5"><tr><td></td></tr></table>
<table height="5"><tr><td></td></tr></table>

<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#b1bfee">
  <form name=book action=guanli2.asp method=post>
    <tr bgcolor="#FFFFFF">
      <td height="25" colspan="2" align=center background="../product/images/titlebg.gif"><strong>����ѡ������</strong></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td align=right class="tr_southidc">������� &nbsp; &nbsp; </td>
      <td class="tr_southidc">�� 
        <input type=radio name=view value="0" <%if rs("view")="0" then%> checked<%end if%>>
        �ر� 
        <input type=radio name=view value="1" <%if rs("view")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="����ѡ����������<br>�����ܵ�������Ϣ���Ƿ���Ϣ��ɧ��"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">������� &nbsp; &nbsp; </td>
      <td class="tr_southidc">�� 
        <input type=radio name=view1 value="0" <%if rs("view1")="0" then%> checked<%end if%>>
        �ر� 
        <input type=radio name=view1 value="1" <%if rs("view1")="1" then%> checked<%end if%> ></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">����html���� &nbsp; &nbsp; </td>
      <td class="tr_southidc">�� 
        <input type=radio name=html value="0" <%if rs("html")="0" then%> checked<%end if%>>
        �� 
        <input type=radio name=html value="1" <%if rs("html")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="����ѡ���ǡ�"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td align=right class="tr_southidc">���Ա���Email &nbsp; &nbsp;</td>
      <td class="tr_southidc">�� 
        <input type=radio name=mailyes value="0" <%if rs("mailyes")="0" then%> checked<%end if%>>
        �� 
        <input type=radio name=mailyes value="1" <%if rs("mailyes")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="�û���������ʱ���Ƿ������д��ЧE-mail��ַ"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">���۱���Email &nbsp; &nbsp; </td>
      <td class="tr_southidc">�� 
        <input type=radio name=mailyes1 value="0" <%if rs("mailyes1")="0" then%> checked<%end if%>>
        �� 
        <input type=radio name=mailyes1 value="1" <%if rs("mailyes1")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="�û���������ʱ���Ƿ������д��ЧE-mail��ַ"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">���۳��� &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=maxlength value="<%=rs("maxlength")%>" maxlength=3 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="����/�������ݵ�����ַ���������200"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align=right class="tr_southidc">ÿҳ�������� &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input name=pages type=text id="pages" value="<%=rs("pages")%>" size=10 maxlength=2> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="ÿҳ��ʾ���Ե��������Ƽ�10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">ÿҳ�������� &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=pages1 value="<%=rs("pages1")%>" maxlength=2 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="ÿҳ��ʾ���۵��������Ƽ�10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">���۱���� &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=book_jianju value="<%=rs("book_jianju")%>" maxlength=2 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="���ʵļ���ʹ��������ۣ��Ƽ�10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">����Ա�ظ���ʾ &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=huifutishi value="<%=rs("huifutishi")%>" maxlength=10 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="�磺��NowShop�ظ��������ͷ��ظ���"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">�ظ����ݵ���ɫ &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=huifucolor value="<%=rs("huifucolor")%>" maxlength=10 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="Ӣ�ĵ��ʻ�16���������磺<font color=red>red</font>��<font color=blue>blue</font>��<font color=#CCAA33>#CCAA33</font>"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align=right class="tr_southidc">��֤��ͼƬ������</td>
      <td class="tr_southidc"><input name="radiobutton" type="radio" value="1" checked>
        <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/1/"&a&".gif><img align=top height=15 border=0 src=images/yzm/1/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/1/"&c&".gif><img align=top height=15 border=0 src=images/yzm/1/"&d&".gif>"
%><input type="radio" name="radiobutton" value="2">
          <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/2/"&a&".gif><img align=top height=15 border=0 src=images/yzm/2/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/2/"&c&".gif><img align=top height=15 border=0 src=images/yzm/2/"&d&".gif>"
%>
          <input type="radio" name="radiobutton" value="3">
      <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/3/"&a&".gif><img align=top height=15 border=0 src=images/yzm/3/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/3/"&c&".gif><img align=top height=15 border=0 src=images/yzm/3/"&d&".gif>"
%></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">�������ݹ��� &nbsp; &nbsp; </td>
      <td class="tr_southidc"><TEXTAREA NAME="bad" ROWS="6" COLS="50" style="overflow:auto;"><%=rs("bad")%></TEXTAREA> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="������˴�֮���ð�ǡ�/������"  align=top></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td colspan=2 class="tr_southidc"><INPUT name="save" TYPE="hidden" value="ok">
        <INPUT TYPE="submit" value="��������"></td>
    </tr>
  </form>
</table>
<table height="5"><tr><td></td></tr></table>

<%
end if
rs.close
set rs=nothing
%>

