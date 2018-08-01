create_product_bin
--------------------

```
Public Function create_product_bin(ByVal bin_name As String, _
                                   ByVal site_id As String, _
                                   ByVal bin_objid As Long, _
                                   ByVal description As String, _
                                   ByVal prim_supp As Long, _
                                   ByVal sec_supp As Long, _
                                   ByVal user_name As String, _
                                   ByVal create_date As String) As Integer
```

#### Description

This API allows you to create a product bin either at a site, or underneath another product bin. You must supply a (unique for the site) bin name, and the site at which the bin is created. If the bin is to be underneath another bin, you must supply the objid of the parent bin. If you supply no parent bin, the new bin is created at the site level. You may optionally also specify a description for the bin, as well as the objids for support employees. Finally you may specify who created the bin, and when they created it. The API returns the objid of the newly-created bin.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| bin_name | Yes | Name of the bin to create |
| site_id | Yes | ID of the site at which the bin is created |
| bin_objid | Yes | Objid of the bin to install the new bin under. If the new bin is to be installed at the site itself, set this argument to -1 |
| description | No | Description of the bin |
| prim_supp | No | Objid of the primary support employee. Note this is an employee, not a user. If you do not wish to supply a support employee, set this argument to -1 |
| sec_supp | No | Objid of the secondary support employee. Note this is an employee, not a user. If you do not wish to supply a support employee, set this argument to -1 |
| user_name | No | Name of the user who created the bin. If blank, the current user is used |
| create_date | No | When was the bin created. If blank, the current date/time is used |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | The specified site could not be found |
| -2 | A product bin with the specified bin name already exists at the specified site |
| -3 | The specified parent bin cannot be found |
| -4 | The specified parent bin was found, but is not located at the specified site |
| -5 | Could not locate the specified primary support employee |
| -6 | Could not locate the specified secondary support employee |
| -7 | Could not locate the "Created" activity log string |
| -8 | The specified user name could not be found |
| ret_objid | Output - Returns the objid of the new product bin |

#### Examples

Create a bin named "Hardware" at the site who has a site ID of "42". Add a description, and set up a primary support employee. "Kent" did the create at the current date/time

**Visual Basic:**
```
Dim ret_int As Integer
Dim bin_objid  As Long

ret_int = fcinter.create_product_bin("Hardware", "42", -1, _
		"Description here", 268435457, -1, "kent", "")

 If ret_int = 0 Then
   bin_objid = fcinter.ret_objid
 End If
```

**JavaScript:**
```
var ret_int = fcinter.create_product_bin("Hardware", "42", -1, "Description here", 268435457, -1, "kent", "");

 if (ret_int == 0){ var bin_objid = fcinter.ret_objid; }
``` 