_Item_
------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public Property Get Item(TheItem As String) As Variant

**Description**

The Item property allows access to a collection of data stored in the FCSession object.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

TheItem                                 Yes                         The item to be retrieved.

**Returns**

The set of data available in the collection is dependent on the LoginType used in the Login method.

The following items are always available:

<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none"><tbody><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Item</b></p></td><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Type</b></p></td><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Comments</b></p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">session.login_type</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">The LoginType used in the Login method</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">session.login_name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">The LoginName used in the Login method</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">config_itm.&lt;name&gt;.value_type</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Integer</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">The Internal flag setting. Use depends on individual config_itm</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">config_itm.&lt;name&gt;.i_value</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Integer</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">A quantity which sets behavior of the application&nbsp;</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">config_itm.&lt;name&gt;.f_value</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Float</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">A quantity which sets behavior of the application&nbsp;</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">config_itm.&lt;name&gt;.str_value</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">A quantity which sets behavior of the application&nbsp;</p></td></tr></tbody></table>

The following items are available when the LoginType = "user"

<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none"><tbody><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Item</b></p></td><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Type</b></p></td><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Comments</b></p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Objid of employee</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.first_name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">First name of Employee</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.last_name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Last Name of Employee</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.phone</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Phone Number of Employee</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.site.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Objid of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.site.site_id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Site ID of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.site.name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Name of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.site.type</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Type of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.address.address</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Address of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.address.city</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">City of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.address.state</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">State of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.address.zipcode</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Zipcode of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">employee.country.name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Country of Employee's site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">user.login_name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Login Name of User</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">user.locale</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Integer</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Locale of User</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">user.agentid</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Agent ID of User</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">user.status</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Integer</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Status of User</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">wipbin.title</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Title of User's Default Wipbin</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">user.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Objid of User</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">wipbin.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Objid of User's Default Wipbin</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">privclass.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Objid of user's privilege class</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">privclass.name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Name of user's privilege class</p></td></tr></tbody></table>

The following items are available when the LoginType = "contact"

<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none"><tbody><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Item</b></p></td><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Type</b></p></td><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-left:none;background:black;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><b>Comments</b></p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Objid of Contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.first_name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">First Name of Contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.last_name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Last Name of Contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.email</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Email of Contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.phone</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Phone of Contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.fax</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Fax of Contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.site.id</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">Long</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Objid of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><span lang="FR">contact.site.site_id</span></p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Site ID of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.site.name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Name of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid"><span lang="FR">contact.site.type</span></p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Type of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.title</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Title of the contact</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.address.address</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Address of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.address.address2</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Address2 of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.address.city</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">City of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.address.state</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">State of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.address.zipcode</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Zipcode of Contact's Primary Site</p></td></tr><tr><td width="197" valign="top" style="width:2.05in;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">contact.country.name</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText" style="page-break-after:avoid">String</p></td><td width="197" valign="top" style="width:2.05in;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt"><p class="MsoBodyText2">Country Name of Contact's Primary Site</p></td></tr></tbody></table>

**Error Codes**

**Value                                     Meaning                                                                                                                               **

11001                                      Field given is not a valid field for config_itm.

11002                                      Item not found.

**Example**

The following examples displays the name of either the user or the contact depending on the login type.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<% if (FCSession.Item("session.login_type") == "contact") { %>

   Name = <%=FCSession.Item("contact.first_name")%>

          &nbsp;<%=FCSession.Item("contact.last_name")%> <BR>

<% } else { %>

   Name = <%=FCSession.Item("employee.first_name")%>

          &nbsp; <%=FCSession.Item("employee.last_name")%> <BR>

<% } %>

The following examples displays the integer value for a configuration item.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

i_value for the config_itm "password specification" =

<%=FCSession.Item("config_itm.password specification.i_value")%> <BR>