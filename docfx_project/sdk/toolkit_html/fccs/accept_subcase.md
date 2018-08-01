accept_subcase
--------------

```
Public Function accept_subcase(ByVal subcase_id As String, _
                             ByVal accept_date As String, _
                             ByVal wipbin As String, _
				             ByVal user_name As String, _
				             ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified subcase to be accepted from a dispatched queue. The subcase must be currently dispatched to a queue. The date/time of the accept, the WIPBin to place the subcase  in, and the user performing the accept can be specified. The API can also generate a time bomb (for business rule notification), or not.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| subcase_id | Yes | The subcase to accept |
| accept_date | No | When was the subcase accepted. If this parameter is left blank, the subcase is accepted at the current time |
| wipbin | No | The WIPBin to place the subcase in (for the user who accepted the subcase). If left blank, the subcase is placed in the user's default WIPBin |
| user_name | No | The user who accepted the subcase. If left blank, the current user performs the accept. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified subcase |
| -2 | Subcase is not currently in a queue |
| -3 | Specified user is not a member of the queue |
| -4 | The specified WIPBIN is not valid for the user |
| -5 | Could not find gbst_elm string for ACCEPT |

#### Examples

Accept Subcase number '10-1' right now for the current user, place in the default WIPBin, and generate a time bomb.

**JavaScript:**

var ret_int = fccs.accept_subcase("10-1", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.accept_subcase("10-1", "", "", "", True)

 Accept subcase number '2-3' at 10PM on November 23rd of 1997 by marty, and place the subcase in marty's WIPBin named 'Urgent'. Don't generate a time bomb

**JavaScript:**

var ret_int = fccs.accept_subcase("2-3", "11/23/97 22:00:00", "Urgent",

                                  "marty", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.accept_subcase("2-3", "11/23/97 22:00:00", "Urgent", _
                           "marty", False)