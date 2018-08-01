dispatch_pr
-----------

```
Public Function dispatch_pr(ByVal pr_id As String, _
                            ByVal queue_name As String, ByVal disp_date As String, _
                            ByVal user_name As String, ByVal gen_time_bombs As Boolean) _
                            As Integer
```

#### Description

This API causes the specified part request to be dispatched to the specified queue. The part request must be in open condition, and not currently dispatched to a queue. The API allows for the setting of the dispatch date, and the user who dispatched the part request. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_id | Yes | The part request to dispatch |
| queue_name | Yes | The queue to dispatch to |
| disp_date | No | When was the part request dispatched. If this parameter is left blank, the PR is dispatched at the current time |
| user_name | No | The user who dispatched the part request. If left blank, the current user performs the dispatch. |
| gen_time_bombs | Yes | Should a time_bomb be generated |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified part request |
| -2 | The part request is already dispatched |
| -3 | The part request is closed and may not be dispatched |
| -4 | The specified user cannot be found |
| -5 | The specified new queue name cannot be found |
| -6 | The DISPATCH activity string is not found with rank = 900 |
| -7 | The specified queue does not allow dispatches of part requests |

#### Examples

Dispatch part request number '1-14' to queue 'Hardware'. The dispatch is performed by the current user and is dispatched at the current time. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.dispatch_pr("1-14", "Hardware", "", "", True)
```

**JavaScript:**
```
var ret_int = fccl.dispatch_pr("1-14", "Hardware", "", "", true);
```

Dispatch part request number '2-1' at 10PM on November 23rd of 2001 to 'Software'. Dispatch should be logged as performed by Nancy. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.dispatch_pr("2-1", "Software", "11/23/01 22:00:00", _
                       "nancy", False)
```

**JavaScript:**
```
var ret_int = fccl.dispatch_pr("2-1", "Software", "11/23/01 22:00:00",
                       "nancy", false);
```