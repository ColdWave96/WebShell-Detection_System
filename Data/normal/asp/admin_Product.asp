<!--#include File="inc/Conn.asp" -->
<%
 
Dim OO00O0,OO00OO,OO0O0,OO0OO,OO0O00
Set OO0O0=Response:Set OO00OO=Request:Set OO0O00=Session:Set OO00O0=Application:Set OO0OO=Server
If OO0O00("AdminName")="" and OO0O00("adminpass")="" Then
OO0O0.Redirect "Error.asp?id=001"
OO0O0.end
end if
OO0O0.Write(vbCrLf)
OO0O0.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO0O0.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO0O0.Write("<head>" & vbCrLf)
OO0O0.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO0O0.Write("<title>��Ʒ����</title>" & vbCrLf)
OO0O0.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO0O0.Write("</head>" & vbCrLf)
OO0O0.Write("<script language=""javascript""> " & vbCrLf)
OO0O0.Write("<!-- " & vbCrLf)
OO0O0.Write("function CheckAll(){ " & vbCrLf)
OO0O0.Write(" for (var i=0;i<eval(form.elements.length);i++){ " & vbCrLf)
OO0O0.Write("  var e=form.elements[i]; " & vbCrLf)
OO0O0.Write("  if (e.name!=""allbox"") e.checked=form.allbox.checked; " & vbCrLf)
OO0O0.Write(" } " & vbCrLf)
OO0O0.Write("} " & vbCrLf)
OO0O0.Write("function MM_jumpMenu(targ,selObj,restore){ //v3.0" & vbCrLf)
OO0O0.Write("  eval(targ+"".location='""+selObj.options[selObj.selectedIndex].value+""'"");" & vbCrLf)
OO0O0.Write("  if (restore) selObj.selectedIndex=0;" & vbCrLf)
OO0O0.Write("}" & vbCrLf)
OO0O0.Write("--> " & vbCrLf)
OO0O0.Write("</script> " & vbCrLf)
OO0O0.Write("<body>" & vbCrLf)
OO0O0.Write("<table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">" & vbCrLf)
OO0O0.Write("  <tr> " & vbCrLf)
OO0O0.Write("    <td height=""34""><table width=""100%"" border=""0"" align=""center"" cellpadding=""4"" cellspacing=""0"" >" & vbCrLf)
OO0O0.Write("      <form action=""admin_Product.asp"" method=""post"" name=""myform"" id=""myform"">" & vbCrLf)
OO0O0.Write("        <tbody>" & vbCrLf)
OO0O0.Write("          <tr>" & vbCrLf)
OO0O0.Write("            <td height=""35"" align=""left"" nowrap=""nowrap""><font size=2><b class=""pl15"">��Ʒ����</b>" & vbCrLf)
OO0O0.Write("                <select name=""menu1"" onchange=""MM_jumpMenu('self',this,0)"">" & vbCrLf)
OO0O0.Write("                  <option>--����Ʒ�������--</option>" & vbCrLf)
OO0O0.Write("                  <option value=""admin_Product.asp"">�鿴ȫ������</option>" & vbCrLf)
OO0O0.Write("                  ")
Set Rs=OO0OO.Createobject("Adodb.Recordset")
Sql="Select * From ProductClass"
Rs.open Sql,Conn, (106 * 34 - 3603), (70 * 62 - 4337)
Do While not Rs.Eof
OO0O0.Write(vbCrLf)
OO0O0.Write("                  <option value=""admin_Product.asp?classid=")
OO0O0.Write rs("id")
OO0O0.Write(""">��")
OO0O0.Write rs("name")
OO0O0.Write("��</option>" & vbCrLf)
OO0O0.Write("                  ")
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
OO0O0.Write(vbCrLf)
OO0O0.Write("                </select>" & vbCrLf)
OO0O0.Write("              ���ͣ�&nbsp;" & vbCrLf)
OO0O0.Write("              <input name=""leixing"" type=""radio"" value=""Productname"" checked=""checked"" />" & vbCrLf)
OO0O0.Write("              ����&nbsp;&nbsp;" & vbCrLf)
OO0O0.Write("              <input name=""leixing"" type=""radio"" value=""body"" />" & vbCrLf)
OO0O0.Write("              ����" & vbCrLf)
OO0O0.Write("              �ؼ��ʣ�" & vbCrLf)
OO0O0.Write("              <input name=""keyword"" class=""input-text"" size=""20"" maxlength=""16"" />" & vbCrLf)
OO0O0.Write("              <input name=""submit"" type=""submit"" class=""btn btn82 btn_search"" value=""��ѯ"" />" & vbCrLf)
OO0O0.Write("            </td>" & vbCrLf)
OO0O0.Write("          </tr>" & vbCrLf)
OO0O0.Write("        </tbody>" & vbCrLf)
OO0O0.Write("      </form>" & vbCrLf)
OO0O0.Write("    </table></td>" & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("  <tr> " & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("</table>" & vbCrLf)
OO0O0.Write("<br>" & vbCrLf)
OO0O0.Write("<table width=""95%"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO0O0.Write("  <tr>" & vbCrLf)
OO0O0.Write("    <th width=""40"">ѡ��</th>" & vbCrLf)
OO0O0.Write("    <th width=""40""> ID��</th>" & vbCrLf)
OO0O0.Write("    <th width=""250""> ��Ʒ����</th>" & vbCrLf)
OO0O0.Write("    <th width=""120"">��Ʒ����</th>" & vbCrLf)
OO0O0.Write("    <th width=""100"">����ʱ��</th>" & vbCrLf)
OO0O0.Write("    <th width=""100"">��ͼ</th>" & vbCrLf)
OO0O0.Write("    <th width=""80"">����</th>" & vbCrLf)
OO0O0.Write("	<th width=""80"">����</th>" & vbCrLf)
OO0O0.Write("    <th width=""50"">�޸�</th>" & vbCrLf)
OO0O0.Write("    <th width=""50"">ɾ��</th>" & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("  <form id=""form"" name=""form"" method=""post"" action=""?"">" & vbCrLf)
OO0O0.Write("    ")
Page=OO00OO("Page")
PageSize = (29 * 24 - 681)
ye= (106 * 34 - 3603)
sql="select * from [Product] order by px_id desc,id desc"
Set rs = OO0OO.CreateObject("ADODB.Recordset")
rs.open sql,conn, (106 * 34 - 3603), (70 * 62 - 4337)
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (106 * 34 - 3603) Then Page= (106 * 34 - 3603)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (60 * 12 - 720) Then Rs.AbsolutePage=Page
Count= (60 * 12 - 720)
Do While not Rs.Eof And Count<Rs.PageSize
if rs("px_id")<> (60 * 12 - 720) then pxbj="style=""background:#FEEEE5""" else pxbj=""
OO0O0.Write(vbCrLf)
OO0O0.Write("    <tr ")
OO0O0.Write pxbj
OO0O0.Write(" bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO0O0.Write("      <td><input name=""ID"" type=""checkbox"" id=""ID"" value=""")
OO0O0.Write rs("id")
OO0O0.Write(""" /></td>" & vbCrLf)
OO0O0.Write("      <td>")
OO0O0.Write rs("id")
OO0O0.Write("</td>" & vbCrLf)
OO0O0.Write("      <td><a href=""../Product.asp?id=")
OO0O0.Write rs("id")
OO0O0.Write("""  title=""")
OO0O0.Write rs("Productname")
OO0O0.Write(""" target=""_blank"">")
OO0O0.Write left(rs("Productname"), (36 * 94 - 3344))
OO0O0.Write("</a></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center"">" & vbCrLf)
OO0O0.Write("        ")
set rsc=OO0OO.CreateObject("adodb.recordset")
rsc.open "select * From ProductClass ",conn, (106 * 34 - 3603), (106 * 34 - 3603)
while not rsc.eof
if CInt(rs("classid"))=rsc("id") then
OO0O0.Write("<a href=""?classid=" & rsc("id") & """>" & rsc("name") & "</a>")
end if
rsc.movenext
wend
rsc.close
set rsc=nothing
OO0O0.Write(vbCrLf)
OO0O0.Write("      </div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center"">")
OO0O0.Write rs("sj")
OO0O0.Write("</div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center""><a href=""")
OO0O0.Write rs("pic")
OO0O0.Write(""" target=""_blank""><img src=""")
OO0O0.Write rs("pic")
OO0O0.Write(""" alt="""" width=""55"" height=""30"" border=""0"" /></a></div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center"">" & vbCrLf)
OO0O0.Write("        <input   name=""px_id")
OO0O0.Write rs("id")
OO0O0.Write("""   type=""text"" class=""input-text"" onKeyPress=""event.returnValue=IsDigit();""   value=""")
OO0O0.Write rs("px_id")
OO0O0.Write(""" size=""5"" maxlength=""5"">" & vbCrLf)
OO0O0.Write("        <script>   " & vbCrLf)
OO0O0.Write("  function   pass")
OO0O0.Write rs("id")
OO0O0.Write("(){   " & vbCrLf)
OO0O0.Write("  window.location=""?id=")
OO0O0.Write rs("id")
OO0O0.Write("&action=px&textValue=""+document.all.px_id")
OO0O0.Write rs("id")
OO0O0.Write(".value;   " & vbCrLf)
OO0O0.Write("  }   " & vbCrLf)
OO0O0.Write("          </script>" & vbCrLf)
OO0O0.Write("      </div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center""><a href=""#"" onClick=""pass")
OO0O0.Write rs("id")
OO0O0.Write("()""><img src=""Images/paixu.gif"" alt=""����Խ��Խ��ǰ"" width=""70"" height=""30"" border=""0""></a></div></td>" & vbCrLf)
OO0O0.Write("      " & vbCrLf)
OO0O0.Write("      <td><div align=""center""><a href=""admin_Product_edit.asp?id=")
OO0O0.Write rs("id")
OO0O0.Write(""">�޸�</a></div></td>" & vbCrLf)
OO0O0.Write("      <td><input type=""button"" class=""btn btn82 btn_del"" name=""button"" value=""ɾ��"" onClick=""javascript:if(confirm('�ף�ȷ��ɾ����ɾ���󲻿ɻָ�!')){window.location.href='?id=")
OO0O0.Write rs("id")
OO0O0.Write("&amp;del=ok';}else{history.go(0);}""  /></td>" & vbCrLf)
OO0O0.Write("    </tr>" & vbCrLf)
OO0O0.Write("    ")
Rs.Movenext
Count=Count+ (106 * 34 - 3603)
Loop
OO0O0.Write(vbCrLf)
OO0O0.Write("    <tr bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO0O0.Write("      <td><input name=""allbox"" type=""checkbox"" id=""allbox"" onClick=""CheckAll()"" /></td>" & vbCrLf)
OO0O0.Write("      <td>ȫѡ</td>" & vbCrLf)
OO0O0.Write("      <td><input name=""submit2"" type=""submit"" class=""input-text""    onClick=""javascript:if(confirm('�ף�ȷ��ɾ����ɾ���󲻿ɻָ�!'))form.action='?action=del';"" value=""ɾ��""   /></td>" & vbCrLf)
OO0O0.Write("      <td colspan=""7"">&nbsp;</td>" & vbCrLf)
OO0O0.Write("    </tr>" & vbCrLf)
OO0O0.Write("  </form>" & vbCrLf)
OO0O0.Write("</table>" & vbCrLf)
OO0O0.Write("<div class=""pagination"">" & vbCrLf)
OO0O0.Write("                  <ul>")
OO0O0.Write "<Form Method=""Post"" action=""?"">"
OO0O0.Write "<li class=""disabled""><span>��"& Page &"ҳ/��"& pgnum &"ҳ</span></li> "
If Page= (106 * 34 - 3603) Then
OO0O0.Write "<li class=""disabled""><span>��ҳ</span></li> <li class=""disabled""><span>��һҳ</span></li> "
Else
OO0O0.Write "<li><a href=""?Page=1&leixing="&OO00OO("leixing")&"&keyword="&OO00OO("keyword")&"&ClassID="& OO00OO("classID") &""">�� ҳ</a></li>"
OO0O0.Write "<li><a href=""?Page="& Page- (106 * 34 - 3603) &"&leixing="&OO00OO("leixing")&"&keyword="&OO00OO("keyword")&"&ClassID="& OO00OO("classID") &""">��һҳ</a></li>"
End If
If Rs.PageCount-Page< (106 * 34 - 3603) Then
OO0O0.Write "<li class=""disabled""><span>��һҳ</span></li><li class=""disabled""><span>β ҳ</span></li>"
Else
OO0O0.Write "<li><a href=""?Page="& Page+ (106 * 34 - 3603) &"&leixing="&OO00OO("leixing")&"&keyword="&OO00OO("keyword")&"&ClassID="& OO00OO("classID") &""">��һҳ</a></li> "
OO0O0.Write "<li><a href=""?Page="& Rs.PageCount &"&leixing="&OO00OO("leixing")&"&keyword="&OO00OO("keyword")&"&ClassID="& OO00OO("classID") &""">β ҳ</a></li>"
End If
OO0O0.Write " <li class=""disabled""><span>��<font color=#ff0000> "& Pagingnum &" </font>��</span></li> "
OO0O0.Write " <li class=""disabled""><span>ת����</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
OO0O0.Write "<Input Type=""Submit"" class=""input-text"" value=""��ת"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
OO0O0.Write("    </ul>" & vbCrLf)
OO0O0.Write("</div>" & vbCrLf)
OO0O0.Write("</body>" & vbCrLf)
OO0O0.Write("</html>" & vbCrLf)
if OO00OO("del")="ok" then
set rs=OO0OO.createobject("adodb.recordset")
id=OO00OO.QueryString("id")
sql="select * from Product where id="&id
rs.open sql,conn, (52 * 101 - 5250), (70 * 62 - 4337)
rs.delete
rs.update
OO0O0.Write "<script>alert('��ǰ��Ϣɾ���ɹ���');window.location.href='admin_Product.asp';</script>"
end if
If OO00OO("action")="px" Then
OO0O0.Write "<script>alert('��Ѱ��ݲ�֧������\n����Խ��Խ��ǰ!');window.location.href='admin_Product.asp';</script>"
end if
conn.close
set conn=nothing
%>