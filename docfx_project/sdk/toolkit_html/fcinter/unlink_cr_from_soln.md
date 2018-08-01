unlink_cr_from_soln
---------------------

```
Public Function unlink_cr_from_soln(ByVal cr_id As String, _
                                    ByVal soln_id As String, _
                                    ByVal unlink_date As String, _
                                    ByVal user_name As String, _
                                    ByVal create_time_bomb As Boolean) As Integer
```

#### Description

This API allows a CR to be unlinked from a solution it is currently linked to. The CR must already be linked to the solution. The unlink date, and user can be specified. Also, a time bomb can be generated for business rules.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | CR to unlink |
| soln_id | Yes | Solution ID to unlink |
| unlink_date | No | When was the unlink performed? If blank, current date/time is used |
| user_name | No | Who performed the unlink? If blank, current user is used |
| create_time_bomb | Yes | Should a time bomb be added to the system for business rule firing? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find specified CR |
| -2 | CR is not linked to the solution |
| -3 | Cannot find the specified user |
| -4 | Cannot find the activity string for "Unlink CR" rank equal to 6800 |
| -5 | Cannot find the activity string for "Unlink Solution" rank equal to 6600 |
| -6 | Cannot find the specified user's employee record for relating time bomb | 

#### Examples

Unlink CR '55' from the solution '66' at the current date/time by the current user. Generate time bombs.

**Visual Basic:**

Dim ret_int    As Integer
```

ret_int = fcinter.unlink_cr_from_soln("55", "66", "", "", true)

**Javascript:**

var ret_int = fcinter.unlink_cr_from_soln("55", "66", "", "", true);