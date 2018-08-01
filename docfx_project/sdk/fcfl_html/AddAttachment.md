### AddAttachment

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function AddAttachment(ByVal attach_name As String, _
                              ByVal file_path As String, _
                              ByVal obj_type As String, _
                              ByVal obj_id As String, _
                              Optional ByVal obj_objid As Long = 0, _
							  Optional ByVal attach_type As Long = 0)_
                              As Integer
```

#### Description

This method is used to add an attachment to an object. The only objects allowed are those supported by Clarify. For a list of those objects, please see the Clarify documentation.

For an attachment to be added, you must supply the attachment name, the file path and name, the object type (table name), and either the ID number for the object (if it has one, and you know it), or the objid of the object. Only one of obj_id or obj_objid should be supplied.

The supported table names are:

*  bug
*  bus_org
*  campaign
*  case
*  communication
*  contact
*  contract
*  demand_hdr
*  diag_hint
*  eco_hdr
*  eco_dtl
*  email_log
*  interact
*  lead
*  lit_req
*  lit_ship_req
*  mod_level
*  opportunity
*  site
*  site_part
*  subcase
*  template
*  workaround

This method does **NOT** copy the file to a file system, or even validate the existence of the file. You must take care of the file details on your own. This API only adds the proper records for an attachment to Clarify.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| attach_name | Yes | The name of the attachment |
| file_path | Yes | The file path and name of the attachment |
| obj_type | Yes | The name of the database table to add the attachment to |
| obj_id | No | The ID number for the object to which to add the attachment. If it is not known, or the object doesn't have an ID number, this field is left blank |
| obj_objid | No | The objid of the object to which to add the attachment. This argument is only supplied if you wish to specify the object by objid. If you use the ID number, this argument does not have to be supplied |
| attach_type | No | Attachment Type - either 0 or 1<br>0 = Standard Attachments<br>1 = Attachments Anywhere Style Attachments |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| 1 | No attachment name specified |
| 2 | No File/Path specified |
| 3 | Invalid/unsupported object type supplied |
| 4 | An ID number was supplied, but this object type does not have an ID number field |
| 5 | Specified object was not found |
| 6 | This object already has an attachment with the specified attachment name |

#### Examples

The following example adds an attachment to case '42'.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim ret_int As Integer

ret_int = fc_session.AddAttachment("An attach", "c:\\tmp\\foo.doc", "case", "42")

The following example adds an attachment to a site_part with objid 268437142.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim ret_int As Integer

ret_int = fc_session.AddAttachment("SP attach", "c:\\docs\\sp.ppt", "site_part", "", 268437142)