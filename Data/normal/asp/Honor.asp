<!--#include File="inc/Honorconn.asp" --><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=Rs("Honorname")%> - <%=List("WebName")%></title>
<meta name="generator" content="" />
<meta name="author" content="" />
<meta name="keywords" content="<%=Rs("Honorname")%>" />
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
</head>
<body>
<!--#include file="top.asp" -->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="left.asp" -->
<div class="content_box">
<div class="content_top"><span>����ǰλ�ã�<a href="/">��ҳ</a>&nbsp;&gt;&nbsp;����չʾ&nbsp;&gt;&nbsp;����</span>   ����չʾ</div>
<div class="info_box">
<div class="Honorxx">
<a href="<%=Rs("pic")%>" title="<%=Rs("Honorname")%>" target="_blank">
<div class="cppic" align="center"><IMG alt="<%=Rs("Honorname")%>" src="<%=Rs("pic")%>"></DIV>
</a>
<div class="pro_info">
<dl>
<dt><%=Rs("Honorname")%></dt>
<dd></dd>
</dl>
</div><div class="clear"></div>
<div class="detail">
<div class="detail_tit"><b>��ϸ���ܣ�</b></div>
<div class="detail_info"><%=Rs("body")%></div>
</div>
</div>
<div align="left" style="border-top:1px dashed #ccc; padding:10px 0 10px 0;margin-top:15px;">
<div class="thb">
<dl>
<dt><%set rs=conn.execute("select top 1 id,Honorname from Honor where id<"&rs("id")&" order by id desc")
if not rs.eof or not rs.bof then %>
<a href="Honor.asp?id=<%=rs("id")%>">��һƪ:<%=rs("Honorname")%></a>
<%else%>
<a href="javascript:alert('���Ѿ��ǵ�һ����¼�ˣ�')">û����һƪ�� </a>
<%rs.close
	set rs=nothing
	end if%></dt><dt><%set rs1=conn.execute("select top 1 id,Honorname from Honor where id>"&id&" order by id asc")
if not rs1.eof or not rs1.bof then%>
<a class='next' href="Honor.asp?id=<%=rs1("id")%> ">��һƪ:<%=rs1("Honorname")%></a>
<%else%>
<a href="javascript:alert('���Ѿ������һ����¼�ˣ�');">û����һƪ��</a>
<%rs1.close
set rs1=nothing
end if%></dt></dl>
</div>
</div>
</div>
</div>
<div class="blank80"></div>
</div>
<div class="clear"></div>
</div>
<!-- /mainbody-->
<!-- footer-->
<!--#include File="foot.asp" --><!-- /footer-->
</body>
</html>