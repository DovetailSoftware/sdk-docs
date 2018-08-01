close_pr
--------

```
Public Function close_pr(ByVal pr_id As String, _
                         ByVal new_status As String, ByVal close_date As String, _
                         ByVal user_name As String, ByVal gen_time_bombs As Boolean) _
                         As Integer
```

#### Description

This API causes the specified part request to be closed. This is a transition to condition closed, and the API will validate that the user has the authority to close the part request. The API also allows the user who performed the close and the date/time of the close to be set. In addition, the status of the part request (in closed condition) can be specified. The API can also generate a time bomb (for business rule notification). If this is the last part request detail that was open for the part request header, the header is also closed.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_id | Yes | The part request to close |
| new_status | No | The (closed condition) status of the part request. If blank, the default close condition status is used |
| close_date | No | When was the part request closed. If this parameter is left blank, it is closed at the current time |
| user_name | No | The user who closed the part request. If left blank, the current user performs the close |
| gen_time_bombs | Yes | Should a time_bomb be generated |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified part request |
| -2 | The part request is already closed |
| -3 | Cannot find the specified user |
| -4 | Cannot find the CLOSE activity string with rank = 11500 |
| -5 | The transition to CLOSED condition does not exist |
| -6 | The user is not authorized to make the transition to CLOSED condition |
| -7 | The new status is not found for CLOSED condition |
| -8 | The part request is currently dispatched to a queue |
| -9 | The employee record for the specified user cannot be found |

#### Examples

Close part request '154-1'. Jack closed it on February 10th, and it should be put in status "Really closed". Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.close_pr("154-1", "Really closed", "2/10/2001 14:50:00", _
"jack", True)

**Javascript:**

var ret_int = fccl.close_pr("154-1", "Really closed", "2/10/2001 14:50:00",

"jack", true);

 Current user closes part request '2-33'. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.close_pr("2-33", "", "", "", False)

**Javascript:**

var ret_int = fccl.close_pr("2-33", "", "", "", false);