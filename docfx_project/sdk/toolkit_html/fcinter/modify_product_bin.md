modify_product_bin
--------------------

```
Public Function modify_product_bin(ByVal bin_objid As Long, _
                                   ByVal bin_name As String, _
                                   ByVal description As String, _
                                   ByVal prim_supp As Long, _
                                   ByVal sec_supp As Long, _
                                   ByVal user_name As String, _
                                   ByVal mod_date As String) As Integer
```

#### Description

This API allows you to modify an existing product bin. You may change the bin name and the description. You may also set or clear out the primary and backup support employee. Finally you may specify who modified the product bin, and when.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| bin_objid | Yes | Objid of the bin to modify |
| bin_name | No | New name of the bin. If no change is to be made, set the bin_name to "" |
| description | No | New description of the bin. If no change is to be made, use "". If you wish to clear out the description, set this argument to "CLEAR" |
| prim_supp | No | Objid of the primary support employee. If you do not wish to change this value, use 0. If you wish to clear out the primary support employee, set this argument to -1. |
| sec_supp | No | Objid of the secondary support employee. If you do not wish to change this value, use 0. If you wish to clear out the primary support employee, set this argument to -1. |
| user_name | No | Name of the user who modified the bin. If blank, the current user is used |
| modify_date | No | When was the bin modified. If blank, the current date/time is used |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Could not locate the "Modified" activity log string |
| -2 | The specified bin could not be located |
| -3 | The specified bin is a special bin (ex: deinstall bin). This API cannot delete such a bin |
| -4 | The specified bin name to change to is already used at the bin's site |
| -5 | Cannot find the specified user name |
| -6 | Could not locate the specified primary support employee |
| -7 | Could not locate the specified secondary support employee |

#### Examples

Modify bin 268435460. Change the name to "Software" and clear out the description. Leave the primary support employee the same, but clear out the secondary support employee. The current user modifies the bin at the current time.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.modify_product_bin(268435460, "Software", "CLEAR", _
             0, -1, "", "")
```

**JavaScript:**
```
var ret_int = fcinter.modify_product_bin(268435460, "Software", "CLEAR",
             0, -1, "", "");
```