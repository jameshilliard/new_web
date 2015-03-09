<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>Security Advisory</title>
	<link rel="STYLESHEET" type="text/css" href="../../stylesLayout.css">
	<script language="JavaScript" src="../../scripts.js" type="text/javascript"></script>
	<script type="text/javascript">
	function submit()
	{
		document.configForm.submit();
	}

<%
	var admin = getLabelVal("system.access.admUser");
	var nick = getLabelVal("nickname");
	var purpose = nick;
	var tport = nick;
	var tcfg = "Web UI";
	var family_model = getVal('_familymodel_');
	if ((family_model == "ACS")||(family_model == "AVCS")) {
		admusers = "root and " + admin + " user";
		purpose = "This device";
		tport = "serial ports";
		tcfg = "Web Manager or CLI";
	} else if (family_model == "KVM") {
		admusers = admin + " and ROOT users";
		purpose = "KVM connection";
		tport = "KVM Ports";
		tcfg = "Web UI or OSD";
	} else if (family_model == "ONS") {
		admusers = "root and " + admin + " user";
		var purpose = "This device";
		tport = "serial and KVM ports";
		tcfg = "Web Manager, CLI or OSD";
	}
%>

	</script>
</head>
<body class="bodyHelp">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="50" height="50" align="left" valign="top" nowrap><img src="../../Images/warningImage.gif" alt="" width="50" height="50" border="0"></td>
    <td width="365" align="center" valign="middle" class="titleHelp" nowrap>
		Important - Security Advisory</td>
  </tr>
  <tr align="center" valign="middle">
    <td colspan="2"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="25" height="35">&nbsp;</td>
          <td width="25" align="center" valign="middle" height="35"> <img src="../../Images/paragHelp.gif" alt="" width="25" height="25" border="0"></td>
          <td align="left" valign="middle" height="35"> <font class="paragHelp">Introduction</font></td>
        </tr>
        <tr>
          <td width="25" height="35">&nbsp;</td>
          <td width="25" align="center" valign="top"> &nbsp;</td>
          <td width="365" align="left" valign="middle"><div align="justify"><font class="textHelp">
			<%write(purpose);%> provides access to connected devices. It is critically important
			for you to understand that security risks exist until you perform the
			essential precautions described below.
		  </font></div></td>
        </tr>
        <tr>
          <td width="25" height="35">&nbsp;</td>
          <td width="25" align="center" valign="middle" height="35"> <img src="../../Images/paragHelp.gif" alt="" width="25" height="25" border="0"></td>
          <td align="left" valign="middle" height="35"><font class="paragHelp">From the factory, this device is configured as follows:</font></td>
        </tr>
        <tr>
          <td width="25"  height="35">&nbsp;</td>
          <td width="25" align="center" valign="top">&nbsp;</td>
          <td width="365" align="left" valign="middle"><div align="justify"><font class="textHelp">
			&nbsp;&nbsp;&nbsp;- The <%write(admusers);%> accounts have a single password.<br>
			&nbsp;&nbsp;&nbsp;- All <%write(tport);%> are disabled.<br>
			&nbsp;&nbsp;&nbsp;- DHCP, Telnet, SSHv1, SSHv2, HTTP and HTTPS are all enabled.
		</font></div></td>
        </tr>
        <tr>
          <td width="25" height="35">&nbsp;</td>
          <td width="25" align="center" valign="middle" height="35"> <img src="../../Images/paragHelp.gif" alt="" width="25" height="25" border="0"></td>
          <td align="left" valign="middle" height="35"><font class="paragHelp">Perform the following strongly-recommended actions:</font></td>
        </tr>
        <tr>
          <td width="25"  height="35">&nbsp;</td>
          <td width="25" align="center" valign="top">&nbsp;</td>
          <td width="365" align="left" valign="middle"><div align="justify"><font class="textHelp">
			<font class="paragHelp">1.</font> Change the <%write(admusers);%>s' passwords as soon as you are able to access this device.<br>
			<font class="paragHelp">2.</font> Do not leave the equipment idle without selecting a security profile with
			the appropriate level of security for your site.<br>
			<font class="paragHelp">3.</font> Select a security profile based on your site's information protection
			policies. Security profiles enable and disable different sets of services
			and other features according to three pre-set security levels:  "secured,"
			"moderate,"  and "open." In addition, an administrator can configure and
			select a "custom" security profile.<br>
			<font class="paragHelp">4.</font> Enable <%write(tport);%> and configure user access to these ports using
			the <%write(tcfg);%>.<br><br>

			Refer to the product documentation for details about selecting a security
			profile and configuring access to <%write(tport);%>.<br><br>
		</font></div></td>
        </tr>
        <tr>
          <td width="25" height="30">&nbsp;</td>
          <td align="center" valign="top" width="25" height="30">&nbsp;</td>
          <td width="365" height="30" align="center" valign="middle">
		  <a href="javascript:window.close();">
          <img src="../../Images/closeButton.gif" width="47" height="21" border="0" alt=""></a></td>
        </tr>        
      </table></td>
  </tr>
</tr>
</table>
</body>
</html>
