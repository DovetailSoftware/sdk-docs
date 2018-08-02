accept_solution
---------------

```
Public Function accept_solution(ByVal solution_id As String, _
                                ByVal accept_date As String, _
                                ByVal wipbin As String, _
                                ByVal user_name As String, _
                                ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified solution to be accepted from a dispatched queue. The solution must be currently dispatched to a queue. The date/time of the accept, the WIPBin to place the solution in, and the user performing the accept can be specified. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| solution_id | Yes | The solution  to accept |
| accept_date | No | When was the solution accepted. If this parameter is left blank, it is accepted at the current time |
| wipbin | No | The WIPBin to place the solution in (for the user who accepted it) If left blank, the solution is placed in the user's default WIPBin |
| user_name | No | The user who accepted the solution. If left blank, the current user performs the accept |
| gen_time_bombs | Yes | Should a time bomb record be created for business rule notification? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified solution |
| -2 | Solution is not currently in a queue |
| -3 | Specified user is not a member of the queue |
| -4 | The specified WIPBIN is not valid for the user |
| -5 | Could not find the activity string ACCEPT rank equal to 100 |

#### Examples

Accept solution number "14" right now for the current user, place in the default WIPBin, and generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.accept_solution("14", "", "", "", true)
```

**JavaScript:**
```
var ret_int = fcinter.accept_solution("14", "", "", "", true);
```

Accept solution number '2' at 10PM on November 23rd of 1997 by marty, and place the part request in marty's WIPBin named 'Urgent'. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.accept_solution("2", "11/23/97 22:00:00", "Urgent","marty", false)
```

**JavaScript:**
```
var ret_int = fcinter.accept_solution("2", "11/23/97 22:00:00", "Urgent","marty", false);
```
