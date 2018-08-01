assign_subcase
--------------

```
Public Function assign_subcase(ByVal subcase_id As String, _
                             ByVal new_user As String, _
                             ByVal wipbin_name As String, _
                             ByVal assign_date As String, _
				             ByVal user_name As String, _
				             ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API cause the specified subcase to be assigned to a new user. The subcase must be in the Open condition, and the user assigning the subcase does not have to be the owner of the subcase. In base Clarify, the assigner of a subcase  must be the owner. If either user name is not specified, the "current" user is used. The date/time of the assignment, and the WIPBin to place the subcase in can also be specified. Allowing a WIPBin other than the default one is also an augmentation from base Clarify.  The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| subcase_id | Yes | The subcase ID to be assigned |
| new_user | No | The user who the subcase is assigned to. If left blank, the subcase is assigned to the current user |
| wipbin_name | No | The WIPBin to place the subcase in (for the user who is assigned the subcase). If left blank, the subcase is placed in the user's default WIPBin |
| assign_date | No | When was the subcase assigned. If this parameter is left blank, the subcase is assigned at the current time |
| user_name | No | The user who assigned the subcase If left blank, the current user performs the assign |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified subcase |
| -2 | The specified subcase is not currently open |
| -3 | Specified user (to assign to) is not found |
| -4 | The specified WIPBin is not valid for the user |
| -5 | Specified user (who performed the assign) is not found |
| -6 | Cannot find gbst_elm rank 10500 for string ASSIGN |

#### Examples

Assign subcase number '10-1' to user 'marty'. The assign is performed by the current user, is placed in the default WIPBin and is assigned at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fccs.assign_subcase("10-1", "marty", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.assign_subcase("10-1", "marty", "", "", "", True)

*  Assign subcase number '2'-3 at 10PM on November 23rd of 1997 to marty, and place the subcase in marty's WIPBin named 'Urgent'. Assign should be logged as performed by sam. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.assign_subcase("2-3", "marty", "Urgent",

                               "11/23/97 22:00:00", "sam", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.assign_subcase("2-3", "marty", "Urgent", _
                           "11/23/97 22:00:00", "sam", False)