 <!--#include file="inc/Checkpost.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ർ��menu</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden; overflow-y:scroll;}
body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="images/main/a.png" width="24" height="24" /></div>
    <span>�û���<%=session("AdminName")%> </span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
       <div>
        <span>��Ʒ����</span>
    <a href="admin_Product_add.asp" target="mainFrame" onFocus="this.blur()">��Ӳ�Ʒ</a>
	<a href="admin_Product.asp" target="mainFrame" onFocus="this.blur()">��Ʒ����</a>
	<a href="admin_Product_class.asp" target="mainFrame" onFocus="this.blur()">�������</a>
      </div>
   
        
		      <div>
        <span>���Ź���</span>
<a href="admin_news_add.asp" target="mainFrame" onFocus="this.blur()">�������</a>
<a href="admin_news.asp" target="mainFrame" onFocus="this.blur()">���Ź���</a>
<a href="admin_news_class.asp" target="mainFrame" onFocus="this.blur()">�������</a>
</div>
    
		
		  <div>
        <span>��ҵ��Ϣ����</span>
<a href="admin_about.asp" target="mainFrame" onFocus="this.blur()">��ҵ��Ϣ����</a>
<a href="admin_about_add.asp" target="mainFrame" onFocus="this.blur()">�����ҵ��Ϣ</a>

</div>

 <div>
        <span>�˲���Ƹ����</span>
<a href="admin_job.asp" target="mainFrame" onFocus="this.blur()">�˲���Ƹ����</a>
<a href="admin_job_add.asp" target="mainFrame" onFocus="this.blur()">�˲���Ƹ��Ϣ</a>

</div>

 <div>
        <span>��ҵ����֤�����</span>
<a href="admin_honor_add.asp" target="mainFrame" onFocus="this.blur()">�������֤��</a>
<a href="admin_honor.asp" target="mainFrame" onFocus="this.blur()">��ҵ����֤�����</a>

</div>

 <div>
        <span>���̰�������</span>
<a href="admin_anli_add.asp" target="mainFrame" onFocus="this.blur()">��ӹ��̰���</a>
<a href="admin_anli.asp" target="mainFrame" onFocus="this.blur()">���̰�������</a>

</div>
 <div>
        <span>��վ�߼�����</span>
<a href="admin_user.asp" target="mainFrame" onFocus="this.blur()">����Ա</a>
<a href="admin_xitong.asp" target="mainFrame" onFocus="this.blur()">��վ����</a>
<a href="admin_flash.asp" target="mainFrame" onFocus="this.blur()">�õ�Ƭ����</a>
<a href="admin_link.asp" target="mainFrame" onFocus="this.blur()">���ӹ���</a>
<a target="mainFrame" onFocus="this.blur()" href="../liuyan/guanli.asp"><font color="000000">���Թ���</font></a>
<a href="../liuyan/guanli2.asp" target="mainFrame" onFocus="this.blur()">��������</a>
</div>
 
    </div>
</body>
</html>