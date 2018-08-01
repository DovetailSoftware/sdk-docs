forward_solution
----------------

```
Public Function forward_solution(ByVal solution_id As String, _
                                 ByVal new_queue As String, _
                                 ByVal forward_date As String, _
                                 ByVal notes As String, _
                                 ByVal user_name As String, _
                                 ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified solution to be rejected from the current queue, and forwarded to another queue. The solution must be dispatched to a queue, and the specified new queue must be valid. The API allows for the setting of the forward date, and the user who forwarded the solution. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| solution_id | Yes | The solution to dispatch |
| queue_name | Yes | The queue to forward to |
| forward_date | No | When was the solution forwarded. If this parameter is left blank, the solution is forwarded at the current time |
| notes | No | Optional notes about the forward |
| user_name | No | The user who forwarded the solution. If left blank, the current user performs the forward |
| gen_time_bombs | Yes | Should a time bomb record be created for business rule notification? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified solution |
| -2 | Solution is not currently dispatched |
| -3 | The new queue name specified is not found |
| -4 | Reject-forward attempted to same queue as currently dispatched to |
| -5 | The specified user is not found |
| -6 | Cannot find the activity string for "Forward" rank equal to 1100 |
| -7 | Can not forward Solution to specified queue |

#### Examples

Forward solution number '14' to queue 'Hardware'. The forward is performed by the current user and is forwarded at the current time. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.forward_solution("14", "Hardware", "", _
                                   "", "", true)
```

**JavaScript:**
```
var ret_int = fcinter.forward_solution("14", "Hardware", "",
                                   "", "", true);
```

Forward solution number '2' at 10PM on November 23rd of 1997 to 'Software'. Forward should be logged as performed by Nancy. Add some notes. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.forward_solution("2", "Software", _
                                    "11/23/97 22:00:00", _
                                    "Notes about forward", "nancy", false)
```

**JavaScript:**
```
var ret_int = fcinter.forward_solution("2", "Software",
                                    "11/23/97 22:00:00",
                                    "Notes about forward", "nancy", false);
```