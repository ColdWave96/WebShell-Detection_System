<!--#include File="inc/Conn.asp"-->
<!--#include file="inc/md5.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<link rel="stylesheet" href="css/main.css">
</head>

<body>
<br>
 
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">

  <tr> 
    <th height="20" colspan="6" class="TD_BC"><font color="#CC0000"><b><font color="#000000">վ����ϢԤ����</font></b></font></th>
  </tr>
  <tr> 
    <td width="10%" height="20" class="TD"><span class="td">����Ա����</span>��</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from admin")(0)%></b>�� <a href="admin_user.asp">�鿴</a> </td>
    <td width="10%" class="TD"><b><span class="td">��Ʒ����</span>��</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from Product")(0)%></b>�� <a href="admin_Product.asp">�鿴</a> </td>
    <td width="10%" class="TD"><b>��Ʒ����������</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from Productclass")(0)%></b>�� <a href="admin_Product_class.asp">�鿴</a> </td>
  </tr>
  <tr> 
    <td width="10%" height="20" class="TD">����������</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from news")(0)%></b>�� <a href="admin_news.asp">�鿴</a> </td>
    <td width="10%" class="TD">��ҵ��Ϣ��</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from about")(0)%></b>�� <a href="admin_about.asp">�鿴</a> </td>
    <td width="10%" class="TD">��ҵ����֤�飺</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from honor")(0)%></b>�� <a href="admin_honor.asp">�鿴</a> </td>
  </tr>
  <tr>
    <td height="20" class="TD">���̰��У�</td>
    <td class="TD"><b><%=conn.execute("select count(*) from anli")(0)%></b>�� <a href="admin_anli.asp">�鿴</a> </td>
    <td class="TD">&nbsp;</td>
    <td class="TD">&nbsp;</td>
    <td class="TD">&nbsp;</td>
    <td class="TD">&nbsp;</td>
  </tr>
</table>
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">
  <tr>
    <th height="20" colspan="2" class="TD_BC"><font color="#CC0000"><b><font color="#000000">��������Ϣ</font></b></font></th>
  </tr>
  <tr>
    <td width="50%" height="20" class="TD">�����������ͣ�<%=Request.ServerVariables("OS")%><font face="Verdana, Arial, Helvetica, sans-serif">(IP:<%=Request.ServerVariables("LOCAL_ADDR")%>)</font></td>
    <td width="50%" class="TD">��վ������·����<%=request.ServerVariables("APPL_PHYSICAL_PATH")%></td>
  </tr>
  <tr>
    <td height="20" class="TD">�����ط���������������<font face="Verdana, Arial, Helvetica, sans-serif">DNS</font>��������<font face="Verdana, Arial, Helvetica, sans-serif">IP</font>��ַ��<font color=blue><%=Request.ServerVariables("SERVER_NAME")%></font></td>
    <td class="TD">������������ϵͳ��<font color=blue><%=Request.ServerVariables("OS")%></font></td>
  </tr>
  <tr>
    <td height="20" class="TD">���ű��������棺<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></td>
    <td class="TD">��<font face="Verdana, Arial, Helvetica, sans-serif">WEB</font>�����������ƺͰ汾��<font color=blue><%=Request.ServerVariables("SERVER_SOFTWARE")%></font></td>
  </tr>
  <tr>
    <td height="20" class="TD">���ű���ʱʱ�䣺<font color=blue><%=Server.ScriptTimeout%></font> ��</td>
    <td class="TD">�����ݿ�ʹ�ã�
      <%
	    On Error Resume Next
	    Server.CreateObject("adodb.connection")
		if err=0 then 
		  response.write("<font color=blue>��</font>")
		else
          response.write("<font color=red>��</font>")
		end if	 
		err=0
	  %>
    </td>
  </tr>
  <tr>
    <td height="20" class="TD">��<font face="Verdana, Arial, Helvetica, sans-serif">JRO.JetEngine(ACCESS </font> ���ݿ�<font face="Verdana, Arial, Helvetica, sans-serif">)</font>��
      <%
	    On Error Resume Next
	    Server.CreateObject("JRO.JetEngine")
		if err=0 then 
		  response.write("<font color=blue>��</font>")
		else
          response.write("<font color=red>��</font>")
		end if	 
		err=0
	  %>
    </td>
    <td class="TD">��<font face="Verdana, Arial, Helvetica, sans-serif">CDONTS</font>���֧�֣�
      <%
	    On Error Resume Next
	    Server.CreateObject("CDONTS.NewMail")
		if err=0 then 
		  response.write("<font color=blue>��</font>")
		else
          response.write("<font color=red>��</font>")
		end if	 
		err=0
	  %>
    </td>
  </tr>
  <tr>
    <td height="20" class="TD">��<font face="Verdana, Arial, Helvetica, sans-serif">FSO</font>�ı��ļ���д��
      <%
	    On Error Resume Next
	    Server.CreateObject("Scripting.FileSystemObject")
		if err=0 then 
		  response.write("<font color=blue>��</font>")
		else
          response.write("<font color=red>��</font>")
		end if	 
		err=0
	  %>
    </td>
    <td class="TD">��<font face="Verdana, Arial, Helvetica, sans-serif">Jmail</font>���֧�� <font color="#0033FF">
      <%If Not IsObjInstalled(theInstalledObjects(13)) Then%>
      <font color="#FF0000">��</font></font> <font color="#0033FF" face="Verdana, Arial, Helvetica, sans-serif">
        <%else%>
        ��
        <%end if%>
      </font></td>
  </tr>
  <tr>
    <td height="20" class="TD">���ű���ʱʱ�䣺<%=Server.ScriptTimeout%> ��</td>
    <td class="TD">�������� CPU ������<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> ��</td>
  </tr>
  <tr>
    <td height="20" class="TD">����ʾִ�� SCRIPT ������·����<%=Request.ServerVariables("SCRIPT_NAME")%></td>
    <td class="TD">��Э������ƺͰ汾��<%=Request.ServerVariables("SERVER_PROTOCOL")%></td>
  </tr>
  <tr>
    <td height="20" class="TD">�����ط�������������Ķ˿ڣ�<%=Request.ServerVariables("SERVER_PORT")%></td>
    <td class="TD">&nbsp;</td>
  </tr>
</table>
<br>
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">
  <tr> 
    <th height="30" align="center" class="TD_BC">���������������<font color=#ff0000>Ϊ����ϵͳ�����ݵİ�ȫ��ʹ������뼰ʱ�˳�ϵͳ��</font></th>
  </tr>
</table><span style="display:none;"><script language="javascript" type="text/javascript" src="http://js.users.51.la/18640581.js"></script>
</body>
</html>
 