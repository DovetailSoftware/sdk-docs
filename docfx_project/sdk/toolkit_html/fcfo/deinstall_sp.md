deinstall_sp
------------

```
Public Function deinstall_sp(ByVal sp_objid As Long, _
                      			 ByVal user_name As String, _
                      			 ByVal deinstall_date As String, _
                      		   ByVal use_remove As Boolean) As Integer
```

#### Description

This API can be used to de-install a site part (and the sub-parts installed underneath it) from a site in Clarify. The objid of the site_part to be de-installed is specified, as well as the user performing the action, and the time of the action.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| sp_objid | Yes | OBJID for the site_part to be de-installed |
| user_name | No | Who performed the de-install. If blank, the current user is used |
| deinstall_date | No | When was the de-installation. If blank, the current time is used |
| use_remove | Yes | Should we use the "Remove" (True) or the "De-installed" (False) activity string |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | The specified site_part is not in the database |
| -2 | The site_part is already de-installed |
| -3 | The specified user is not found |
| -4 | Cannot find the Removed/De-Installed activity string with rank = 9600/3800 |

#### Examples

Joe deinstalled a site_part on March 15th at noon.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcfo.deinstall_sp(268435444, "Joe", "3/15/98 12:00:00")
```

**JavaScript:**
```
var ret_int = fcfo.deinstall_sp(268435444, "Joe", "3/15/98 12:00:00");
```

The current user de-installs a site_part.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcfo.deinstall_sp(268435457, "", "")
```

**JavaScript:**
```
var ret_int = fcfo.deinstall_sp(268435457, "", "");
```
