 <!--#include File="inc/Conns.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��վ��ͼ - <%=List("WebName")%></title>
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
</head>
<body> 
<!-- header-->
<!--#include file="top.asp" -->
<!-- /header-->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="left.asp" -->
<div class="content_box">
<div class="content_top"><span>����ǰλ�ã�<a href="index.asp">��ҳ</a>&nbsp;&gt;&nbsp;��վ��ͼ </span>��վ��ͼ</div>
<div class="info_box">
<div class="about"><strong>��ҵ��Ϣ</strong> <% set rsgy=server.CreateObject("adodb.recordset")
rsgy.open"select top 50 * from (select * from about  order by id asc)",conn,1,1
if not rsgy.eof or not rsgy.bof then
do while not rsgy.eof 
%>
<li><a href="about.asp?id=<%=rsgy("id")%>"><%=left(rsgy("aboutname"),12)%></a></li>
<%if not rsgy.eof or not rsgy.bof then rsgy.movenext
loop
end if
rsgy.close
set rsgy=nothing
%><strong>��Ʒ����</strong>  <% set rsfl=server.CreateObject("adodb.recordset")
rsfl.open"select top 50 * from (select * from Productclass order by px_id asc)",conn,1,1
if not rsfl.eof or not rsfl.bof then
do while not rsfl.eof 
%><li><a href="ProductAll.asp?classid=<%=rsfl("id")%>"><%=left(rsfl("name"),12)%></a></li>
<%if not rsfl.eof or not rsfl.bof then rsfl.movenext
loop
end if
rsfl.close
set rsfl=nothing
%>
<strong>������Ѷ</strong> 
<% set rsxw=server.CreateObject("adodb.recordset")
rsxw.open"select top 10 * from (select * from newsclass order by px_id asc)",conn,1,1
if not rsxw.eof or not rsxw.bof then
do while not rsxw.eof 
%>
<li><a href="newsall.asp?classid=<%=rsxw("id")%>"><%=left(rsxw("name"),12)%></a></li>
<%if not rsxw.eof or not rsxw.bof then rsxw.movenext
loop
end if
rsxw.close
set rsxw=nothing
%> 
<ul>
  <li><a href="http://localhost:1484/anliall.asp">����չʾ</a></li>
  <li><a href="http://localhost:1484/HonorAll.asp">��������</a></li>
</ul>
</div>
</div>
</div>
<div class="blank80"></div>
</div>
<div class="clear"></div>
</div>
<!-- /mainbody-->
<!-- footer-->
<!--#include File="foot.asp" -->
<!-- /footer-->
</body>
</html>