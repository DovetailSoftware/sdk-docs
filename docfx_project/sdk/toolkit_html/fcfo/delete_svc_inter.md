delete_svc_inter
------------------

```
Public Function delete_svc_inter(ByVal appt_objid As Long, _
                                 ByVal user_name As String, _
                                 ByVal creation_time As String) As Integer
```

#### Description

This API deletes an existing service interruption (appointment). The objid of the appointment being deleted must be specified. You may specify the user performing the delete, and the time that the delete occurred.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| appt_objid | Yes | The OBJID of the appointment to delete |
| user_name | No | The user who deleted the appt. If left blank, the current user performs the delete |
| creation_time | No | When is the Appt. deleted? If left blank, it will be deleted at the current time |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified appointment |
| -2 | Cannot find user in database |
| -3 | Cannot find employee record for user in database |
| -4 | Cannot find the 'Delete Appt' activity string with rank = 6400 |

#### Examples

Delete an appointment.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcfo.delete_svc_inter(268435666, "", "")
```

**JavaScript:**
```
var ret_int = fcfo.delete_svc_inter(268435666, "", "");
```

Joe deleted an appointment on February 1, 1999 at noon.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcfo.delete_svc_inter(268436555, "Joe", "2/1/99 12:00:00")
```

**JavaScript:**
```
var ret_int = fcfo.delete_svc_inter(268436555, "Joe", "2/1/99 12:00:00");
```
