<!--#include file="include/nowshop.asp" -->
<%
NewsId=Request("NewsId")
If not isNumeric(NewsId) then
Response.Redirect("index.asp")	
response.end
end if
set rs=Server.CreateObject("ADODB.RecordSet")
sql= "select * from News where online=true and Pubdate<= now() and OffDate> now() and NewsId="&request("NewsId")
rs.open sql,conn,1,1
%>
<TITLE>��վ����-</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css" type="text/css">
<LINK href="style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
body {
	margin-top: 8px;
}
-->
</style></head>
<center>
<%
call aspsql()
%>
<table cellspacing="0" bordercolordark="#79144a" cellpadding="0" 
                  width="98%" align="center">
  <tbody>
    <tr>
      <td align="center" valign="top"><table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
          <tr>
            <td class="com_fee_03"><%
set rs=conn.execute("select * from bsetup")
pages=clng(rs("pages"))
html=clng(rs("html"))
book_jianju=clng(rs("book_jianju"))
bad=cstr(rs("bad"))
huifutishi=cstr(rs("huifutishi"))
huifucolor=cstr(rs("huifucolor"))

set rs=Server.CreateObject("ADODB.RecordSet")
sql="select * from book where online='1' "
keywords=request("keywords")
if keywords<>"" then sql=sql+ " and Comments like '%"&keywords&"%' "
sql=sql + "order by top desc,Postdate desc"
rs.open sql,conn,1
if not (rs.eof and rs.bof) then			'���������ʱ������ʾ���ԡ����е�if�뵹����6�е�end if���Ӧ

if pages=0 or pages="" then pages=10		'ÿҳ��������
rs.pageSize = pages	'ÿҳ��¼��
allPages = rs.pageCount	'��ҳ��
page = Request("page")	'�������ȡ�õ�ǰҳ
'if�ǻ����ĳ�����

If not isNumeric(page) then page=1

if isEmpty(page) or clng(page) < 1 then
page = 1
elseif clng(page) >= allPages then
page = allPages 
end if
rs.AbsolutePage = page			'ת��ĳҳͷ��
	Do While Not rs.eof and pages>0
	UserName=rs("UserName")		'�û���
	pic=rs("pic")			'ͷ��
	face=rs("face")			'����

	Comments=rs("Comments")		'����
	bad1=split(bad,"/")		'�����໰
	for t=0 to ubound(bad1)
	Comments=replace(Comments,bad1(t),"***")
	next

	Replay=rs("Replay")		'�ظ�
	Usermail=rs("Usermail")		'�ʼ�
	url=rs("url")			'��ҳ
	I=I+1				'���
	temp=RS.RecordCount-(page-1)*rs.pageSize-I+1
	%>
                <table cellspacing="1" cellpadding="3" width="100%" align="center" bgcolor="#CFCFCF" border="0">
                  <tr>
                    <td valign="middle" width="25%" bgcolor="#FFFFFF" rowspan="2" align="center"><table border="0" width="90%">

                        <tr>
                          <td>������<%=UserName%><br />
                            ���ԣ�<%=rs("IP")%><br />
                            �ʼ���<a href="mailto:<%=Usermail%>"><img src="images/small/mail.gif" border="0" /> �ʼ�</a><br />
                            ��ҳ��<a href="<%=URL%>" target='_blank'><img src="images/small/home.gif" border="0" /> ��ҳ</a></td>
                        </tr>
                    </table></td>
                    <td width="75%" height="20" bgcolor="#ffffff">  �����ڣ�<%=cstr(rs("Postdate"))%></td>
                  </tr>
                  <tr>
                    <td width='75%' valign="top" bgcolor="#FFFFFF"><%
	if html=0 then
	response.write replace(server.htmlencode(Comments),vbCRLF,"<BR>")
	else
	response.write replace(Comments,vbCRLF,"<BR>")
	end if
	%>
                        <%if rs("Replay")<>"" then%>
                        <table cellspacing="1" cellpadding="3" width="90%" align="center" bgcolor="#CFCFCF" border="0">
                          <tr>
                            <td valign="top" bgcolor="#FFFFFF"><font color="<%=huifucolor%>"><%=huifutishi%>��<br />
                                  <%=Replay%></font> </td>
                          </tr>
                        </table>
                      <%end if%>
                    </td>
                  </tr>
                </table>
              <br />
                <%
pages = pages - 1
rs.movenext
if rs.eof then exit do
loop
response.write "<table border=0 width=540 align=center><tr><td><form action='book.asp' method='post'>�ܼ�����"&RS.RecordCount&"�� "
if page = 1 then
response.write "<font color=darkgray>��ҳ ǰҳ</font>"
else
response.write "<a href=book.asp?keywords="&keywords&"&page=1>��ҳ</a> <a href=book.asp?keywords="&keywords&"&page="&page-1&">ǰҳ</a>"
end if
if page = allpages then
response.write "<font color=darkgray> ��ҳ ĩҳ</font>"
else
response.write " <a href=book.asp?keywords="&keywords&"&page="&page+1&">��ҳ</a> <a href=book.asp?keywords="&keywords&"&page="&allpages&">ĩҳ</a>"
end if
response.write " ��"&page&"ҳ ��"&allpages&"ҳ &nbsp; ת���� "
response.write "<select name='page'>"
for i=1 to allpages
response.write "<option value="&i&">"&i&"</option>"
next
response.write "</select> ҳ <input type=submit name=go value='Go'><input type=hidden name=keywords value='"&keywords&"'></form></td><td align=right>"
response.write "<form action='book.asp' method='post'><input title='�����ʲô����' type=text name=keywords value='"&keywords&"' size=10 maxlength=10><input type=submit value='����' title='������'></form></td></tr></table>"

else
response.write "<table cellSpacing=0 cellPadding=0 width=540 align=center bgColor=#FFFFFF border=0><TR><TD height=20 align=center>"
if keywords="" then response.write "��ʱû������" else response.write "��Ǹ��û���ҵ���Ҫ�鵽������<br><br><a href='javascript:history.go(-1)'>������һҳ</a>" end if
response.write "</TD></TR></TABLE>"
end if
%>
            </td>
          </tr>
        </tbody>
      </table>
      <iframe marginwidth="0" marginheight="0" src="book_write.asp" frameborder="0" 

width="100%" scrolling="No" height="580"></iframe></td>
    </tr>
  </tbody>
</table>
</center>
</body>
</html>

<%
set conn=nothing
%>

