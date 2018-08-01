change_pr_status
------------------

```
Public Function change_pr_status(ByVal pr_id As String, _
                                 ByVal new_status As String, ByVal change_date As String, _
                                 ByVal note_str As String, ByVal user_name As String, _
                                 ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified part request to have a status change from one status to another status - always in the same condition. To change the condition of the part request, use one of the supplied APIs such as _receive_ or _pick_. You may specify a new status (or blank for the default status), some notes for the change, the user who performed the status change, and when the status change occurred. Also, the API allows for time bombs (for business rules) to be created.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_id | Yes | The part request to reject |
| new_status | No | The new status. If blank, the default status for the condition is used |
| change_date | No | When did the status change occur. If left blank, current time is used |
| note_str | No | Notes about the status change |
| user_name | No | Who performed the status change? If left blank, current user is used |
| gen_time_bombs | Yes | Should a time bomb record be created for business rule notification? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified part request |
| -2 | Cannot find the new status (or status is not defined for the current  |object's condition)
| -3 | Cannot find the specified user |
| -4 | Cannot find the CHG STATUS activity string with rank = 300 |
| -5 | The employee record for the specified user cannot be found |

#### Examples

Joe changed the status of  part request '1-14' to "Warehouse" on July 1 at noon. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.change_pr_status("1-14", "Warehouse", "7/1/2001 12:00:00", _
                               "Some notes", "joe", True)
```

**JavaScript:**
```
var ret_int = fccl.change_pr_status("1-14", "Warehouse", "7/1/2001 12:00:00",
                               "Some notes", "joe", true);
```

Change the status of part request number '2-1' to the default status. Do not generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.change_pr_status("2-1", "", "", "", "", False)
```

**JavaScript:**
```
var ret_int = fccl.change_pr_status("2-1", "", "", "", "", false);
```