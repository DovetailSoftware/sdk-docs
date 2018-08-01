delete_onsite_log
-------------------

```
Public Function delete_onsite_log(ByVal onsite_log_objid As Long, _
                  ByVal note_date As String, _
                  ByVal user_name As String) As Integer
```

#### Description

This API deletes an existing onsite log. The onsite log OBJID must be supplied, and the user performing the delete and the time that the delete occurred can optionally be specified.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| onsite_log_objid | Yes | The OBJID of the onsite log to delete |
| note_date | No | When is the log deleted? If left blank, it will be deleted at the current time |
| user_name | No | The user who deleted the log. If left blank, the current user performs the delete |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find specified onsite record |
| -2 | Cannot find user for onsite record |
| -3 | Cannot find case for onsite record |
| -4 | Cannot find the 'T & E log delete' activity string with rank = 10600 |

#### Examples

Delete an onsite log.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcfo.delete_onsite_log(268435666, "", "")
```

**JavaScript:**
```
var ret_int = fcfo.delete_onsite_log(268435666, "", "");
```

Joe deleted an onsite log on February 1, 1998 at noon.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcfo.delete_onsite_log(268436555, "2/1/98 12:00:00", "Joe")
```

**JavaScript:**
```
var ret_int = fcfo.delete_onsite_log(268436555, "2/1/98 12:00:00", "Joe");
```