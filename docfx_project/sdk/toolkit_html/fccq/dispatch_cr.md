dispatch_cr
-----------

```
Public Function dispatch_cr(ByVal cr_id As String, _
    ByVal queue_name As String, _
                            ByVal disp_date As String, _
    ByVal user_name As String, _
                            ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified change request to be dispatched to the specified queue. The change request must not be currently dispatched to a queue. The API allows for the setting of the dispatch date, and the user who dispatched the change request. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The change request Id to be dispatched |
| queue_name | Yes | The queue to dispatch to |
| disp_date | No | When was the change request dispatched. If this parameter is left blank, the CR is dispatched at the current time |
| user_name | No | The user who dispatched the change request. If left blank, the current user performs the dispatch |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified change request |
| -2 | The change request is already dispatched |
| -3 | The change request is closed and may not be dispatched |
| -4 | The specified user cannot be found |
| -5 | The specified new queue name cannot be found |
| -6 | Cannot find gbst_elm rank 900 for string DISPATCH |
| -7 | Not allowed to dispatch a CR to the specified queue |

#### Examples

Dispatch change request number '10' to queue 'Hardware'. The dispatch is performed by the current user and is dispatched at the current time. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.dispatch_cr("10", "Hardware", "", "", True)
```

**JavaScript:**
```
var ret_int = fccq.dispatch_cr("10", "Hardware", "", "", true);
```

Dispatch change request number '2' at 10PM on November 23rd of 1997 to queue 'Software'. Dispatch should be logged as performed by nancy. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.dispatch_cr("2", "Software", "11/23/97 22:00:00", _
                           "nancy", False)
```

**JavaScript:**
```
var ret_int = fccq.dispatch_cr("2", "Software", "11/23/97 22:00:00", _
                           "nancy", false);
```