reopen_cr
---------

```
Public Function reopen_cr(ByVal cr_id As String, _
                        ByVal the_status As String, _
                        ByVal wipbin As String, _
                        ByVal user_name As String, _
                        ByVal reopen_date As String, _
                        ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified CR to be reopened. It must be in a condition other than "Open", and cannot be dispatched. The date/time of the reopen, the person performing the reopen, the WIPBin to place the case in, and the new status of the case can be specified. The person who reopens the case becomes the new owner. If the WIPBin is not specified, the CR is placed in the user's default WIPBin. This is augmented function from base Clarify, where the case is always placed in the default WIPBin. The status field is also augmented function. If the status is not specified, the case is placed in the default status for the Open condition. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The CR to reopen |
| status | No | The new status for the CR. If no status is specified, the default status for CR Open condition is used |
| wipbin | No | The WIPBin to place the CR in. If left blank, the default WIPBin for the user is used |
| user_name | No | The user who reopened the CR. If left blank, the current user performs the reopen |
| reopen_date | No | When was the CR reopened. If this parameter is left blank, the reopen occurs at the current time |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified CR |
| -2 | The CR is not closed |
| -3 | The CR is currently dispatched |
| -4 | Cannot find the specified user |
| -5 | Cannot find gbst_elm rank 8800 for string CHG STS:REOPEN |
| -6 | Cannot find the specified status |
| -7 | Cannot find the specified WIPBin |
| -8 | Status transition not defined in Policies and Customers |
| -9 | Status transition not allowed for specified user |
| -17 | Privclass not found for specified user |
| -18 | Old status not found for old condition |
| -19 | New status not found for new condition |
| -20 | Cannot find the specified user's employee record for relating time bomb |

#### Examples

Reopen CR number '10' by the current user at the current date/time. Place in the default WIPBin with the default status, and generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.reopen_cr("10", "", "", "", "", True)
```

**JavaScript:**
```
var ret_int = fccq.reopen_cr("10", "", "", "", "", true);
```

Reopen CR number '2' at 10PM on November 23rd of 1997 by jeanne. Place in jeanne's WIPBin 'Urgent', with status 'User Error'. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.reopen_cr("2", "User Error", "Urgent", _
                         "jeanne", "11/23/97 22:00:00", False)
```

**JavaScript:**
```
var ret_int = fccq.reopen_cr("2", "User Error", "Urgent",
	 "jeanne", "11/23/97 22:00:00", false);
```
