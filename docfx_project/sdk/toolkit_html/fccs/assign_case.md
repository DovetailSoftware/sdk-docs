assign_case
-----------

Public Function assign_case(ByVal case_id As String, _
                            ByVal new_user As String, _
                            ByVal wipbin_name As String, _
                            ByVal assign_date As String, _
          ByVal user_name As String, _
          ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API cause the specified case to be assigned to a new user. The case must be in the Open condition, and the user assigning the case does not have to be the owner of the case. In base Clarify, the assigner of a case  must be the owner. If either user name is not specified, the "current" user is used. The date/time of the assignment, and the WIPBin to place the case in can also be specified. Allowing a WIPBin other than the default one is also an augmentation from base Clarify.  The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The case ID to be assigned |
| new_user | No | The user who the case is assigned to. If left blank, the case is assigned to the current user |
| wipbin_name | No | The WIPBin to place the case in (for the user who is assigned the case). If left blank, the case is placed in the user's default WIPBin |
| assign_date | No | When was the case assigned. If this parameter is left blank, the case is assigned at the current time |
| user_name | No | The user who assigned the case If left blank, the current user performs the assign |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             The specified case is not currently open

-3                                             Specified user (to assign to) is not found

-4                                             The specified WIPBin is not valid for the user

-5                                             Specified user (who performed the assign) is not found

-6                                             Cannot find gbst_elm rank 10500 for string ASSIGN

**Examples**

 Assign case number '10' to user 'marty'. The assign is performed by the current user, is placed in the default WIPBin and is assigned at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fccs.assign_case("10", "marty", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.assign_case("10", "marty", "", "", "", True)

*  Assign case number '2' at 10PM on November 23rd of 1997 to marty, and place the case in marty's WIPBin named 'Urgent'. Assign should be logged as performed by sam. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.assign_case("2", "marty", "Urgent",

                               "11/23/97 22:00:00", "sam", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.assign_case("2", "marty", "Urgent", _
                           "11/23/97 22:00:00", "sam", False)