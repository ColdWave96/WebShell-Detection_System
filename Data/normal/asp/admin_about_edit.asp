<!--#include File="inc/Conn.asp" -->
<%
 Set OO00OO0O00=Response:Set OO00OO0OO=Request:Set OO00OO0OO0=Session:Set OO00OO0O0=Application:Set OO00OO0O0O=Server
If OO00OO0OO0("AdminName")="" and OO00OO0OO0("adminpass")="" Then
OO00OO0O00.Redirect "Error.asp?id=005"
Else
Sql="Select * from about where ID="&OO00OO0OO("ID")
Set Rs1=OO00OO0O0O.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn, (13 * 79 - 1026), (13 * 79 - 1026)
if rs1.bof or rs1.eof then
OO00OO0O00.Write"<center>���޲���Ϣ<a href='admin_about_add.asp'><font color=red>�����Ϣ!</a></center>"
OO00OO0O00.end
else
end if
OO00OO0O00.Write(vbCrLf)
OO00OO0O00.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO0O00.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO0O00.Write("<head>" & vbCrLf)
OO00OO0O00.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO0O00.Write("<title>�޸�����</title>" & vbCrLf)
OO00OO0O00.Write("    <link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO0O00.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OO00OO0O00.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OO00OO0O00.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OO00OO0O00.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OO00OO0O00.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OO00OO0O00.Write("	<script>" & vbCrLf)
OO00OO0O00.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OO00OO0O00.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OO00OO0O00.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OO00OO0O00.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OO00OO0O00.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OO00OO0O00.Write("				allowFileManager : true," & vbCrLf)
OO00OO0O00.Write("				afterCreate : function() {" & vbCrLf)
OO00OO0O00.Write("					var self = this;" & vbCrLf)
OO00OO0O00.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OO00OO0O00.Write("						self.sync();" & vbCrLf)
OO00OO0O00.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0O00.Write("					});" & vbCrLf)
OO00OO0O00.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OO00OO0O00.Write("						self.sync();" & vbCrLf)
OO00OO0O00.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0O00.Write("					});" & vbCrLf)
OO00OO0O00.Write("				}" & vbCrLf)
OO00OO0O00.Write("			});" & vbCrLf)
OO00OO0O00.Write("			prettyPrint();" & vbCrLf)
OO00OO0O00.Write("		});" & vbCrLf)
OO00OO0O00.Write("	</script>" & vbCrLf)
OO00OO0O00.Write("</head>" & vbCrLf)
OO00OO0O00.Write("<body>" & vbCrLf)
OO00OO0O00.Write("            <div class=""box_top"">" & vbCrLf)
OO00OO0O00.Write("              <div align=""center""> �޸�")
OO00OO0O00.Write rs1("aboutname")
OO00OO0O00.Write("</div>" & vbCrLf)
OO00OO0O00.Write("            </div>" & vbCrLf)
OO00OO0O00.Write("            <div class=""box_center"">" & vbCrLf)
OO00OO0O00.Write("  <form id=""myform"" name=""myform""  method=""post"" action=""?action=edit&id=")
OO00OO0O00.Write OO00OO0OO("id")
OO00OO0O00.Write(""">" & vbCrLf)
OO00OO0O00.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO0O00.Write("    <tr>" & vbCrLf)
OO00OO0O00.Write("      <td><div align=""right"">��Ϣ���ƣ�</div></td>" & vbCrLf)
OO00OO0O00.Write("      <td><input name=""aboutname"" class=""input-text lh30"" type=""text"" id=""aboutname"" value=""")
OO00OO0O00.Write rs1("aboutname")
OO00OO0O00.Write(""" size=""80"" maxlength=""150""></td>" & vbCrLf)
OO00OO0O00.Write("    </tr>" & vbCrLf)
OO00OO0O00.Write("    <tr>" & vbCrLf)
OO00OO0O00.Write("      <td><div align=""right"">����ˣ�</div></td>" & vbCrLf)
OO00OO0O00.Write("      <td><input name=""user"" type=""text"" class=""input-text lh30"" id=""user"" value=""")
OO00OO0O00.Write rs1("user")
OO00OO0O00.Write(""" size=""22"" maxlength=""22""></td>" & vbCrLf)
OO00OO0O00.Write("    </tr>" & vbCrLf)
OO00OO0O00.Write("    <tr> " & vbCrLf)
OO00OO0O00.Write("      <td> <div align=""right"">���ݼ�飺</div></td>" & vbCrLf)
OO00OO0O00.Write("      <td colspan=""3""><textarea name=""body"" style=""width:80%;height:400px;visibility:hidden;"">")
OO00OO0O00.Write rs1("body")
OO00OO0O00.Write("</textarea></td>" & vbCrLf)
OO00OO0O00.Write("    </tr>" & vbCrLf)
OO00OO0O00.Write("    <tr> " & vbCrLf)
OO00OO0O00.Write("      <td><div align=""right"">����ʱ�䣺</div></td>" & vbCrLf)
OO00OO0O00.Write("      <td colspan=""3""><span class=""td"">" & vbCrLf)
OO00OO0O00.Write("        <input name=""sj"" type=""text"" class=""input-text lh30"" id=""sj"" value=""")
OO00OO0O00.Write rs1("sj")
OO00OO0O00.Write(""" size=""22"" maxlength=""22""  />" & vbCrLf)
OO00OO0O00.Write("        <input name=button type=button class=""input-text lh30"" onClick=""document.myform.sj.value='")
OO00OO0O00.Write (date())
OO00OO0O00.Write("'"" value=""��Ϊ��ǰʱ��"">" & vbCrLf)
OO00OO0O00.Write("      (��������ȷ�����ڸ�ʽ)</span></td>" & vbCrLf)
OO00OO0O00.Write("    </tr>" & vbCrLf)
OO00OO0O00.Write("    <tr> " & vbCrLf)
OO00OO0O00.Write("      <td>&nbsp;</td>" & vbCrLf)
OO00OO0O00.Write("      <td><input type=""submit"" class=""btn btn82 btn_save2"" name=""Submit"" value=""ȷ ��""></td>" & vbCrLf)
OO00OO0O00.Write("    </tr>" & vbCrLf)
OO00OO0O00.Write("</table>  " & vbCrLf)
OO00OO0O00.Write("</form>" & vbCrLf)
OO00OO0O00.Write(" " & vbCrLf)
OO00OO0O00.Write("</body>" & vbCrLf)
OO00OO0O00.Write("</html>" & vbCrLf)
Rs1.Close
Set Rs1=nothing
end if
OO00OO0O00.Write(vbCrLf)
OO00OO0O00.Write("<!--�޸� -->" & vbCrLf)
if OO00OO0OO("action")="edit" then
if OO00OO0OO("id")="" then
OO00OO0O00.write "��������ȷ<a href=admin_about_edit.asp?id="&OO00OO0OO("id")&">����</a>"
OO00OO0O00.end
end if
aboutname=trim(OO00OO0OO("aboutname"))
user=trim(OO00OO0OO("user"))
body=trim(OO00OO0OO("body"))
sj=trim(OO00OO0OO("sj"))
Set Rs=OO00OO0O0O.Createobject("Adodb.Recordset")
Sql="Select * from about Where ID="&OO00OO0OO("ID")
Rs.open Sql,Conn, (13 * 79 - 1026), (65 * 105 - 6822)
if rs.eof and rs.bof then
OO00OO0O00.Write "<script>alert('��������ȷ��IDֵ�����ڣ�');history.go(-1);</script>"
OO00OO0O00.End()
end if
if aboutname=""  then
OO00OO0O00.Write("<script language=javascript>alert('��Ϣ���ⲻ��Ϊ��!');history.go(-1)</script>")
OO00OO0O00.end
end if
if body=""  then
OO00OO0O00.Write("<script language=javascript>alert('��Ϣ���ݲ���Ϊ��!');history.go(-1)</script>")
OO00OO0O00.end
end if
rs("aboutname")=aboutname
rs("user")=user
rs("body")=body
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
OO00OO0O00.Redirect "admin_about.asp"
OO00OO0O00.end
end if
%>