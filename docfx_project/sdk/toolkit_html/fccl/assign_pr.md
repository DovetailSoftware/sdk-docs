assign_pr
---------

Public Function assign_pr(ByVal pr_id As String, _
                          ByVal new_user As String, ByVal wipbin_name As String, _
                          ByVal assign_date As String, ByVal user_name As String, _
                          ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified part request to be assigned to a new user. The part request must not be in closed condition, and the user assigning the part request does not have to be the owner. In base Clarify, the assigner of a part request must be the owner. If either user name is not specified, the "current" user is used. The date/time of the assignment, and the WIPBin to place the part request in can also be specified. Allowing a WIPBin other than the default one is also an augmentation from base Clarify.  The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

pr_id                                       Yes                         The part request to assign

new_user                               No                           The user who the part request is assigned to. If left blank, it is assigned

to the current user

wipbin_name                        No                           The WIPBin to place the part request in (for the user who is assigned

the part request). If left blank, it is placed in the user's default WIPBin

assign_date                          No                           When was the part request assigned. If this parameter is left blank, it is assigned at the current time

user_name                             No                           The user who assigned the part request. If left blank, the current

user performs the assign

gen_time_bombs                 Yes                         Should a time_bomb be generated

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified part request

-2                                             The specified part request is currently closed

-3                                             Specified user (to assign to) is not found

-4                                             The specified WIPBIN is not valid for the user

-5                                             Specified user (who performed the assign) is not found

-6                                             Could not find gbst_elm string for ASSIGN with rank 10500

**Examples**

 Assign part request number '154-1' to user 'marty'. The assign is performed by the current user, is placed in the default WIPBin and is assigned at the current time. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.assign_pr("154-1", "marty", "", "", "", True)

**Javascript:**

var ret_int = fccl.assign_pr("154-1", "marty", "", "", "", true);

 Assign part request number '2-4' at 10PM on November 23rd of 2001 to marty, and place the part request in marty's

WIPBin named 'Urgent'. Assign should be logged as performed by sam. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.assign_pr("2-4", "marty", "Urgent", "11/23/01 22:00:00", _
                        "sam", False)

**Javascript:**

var ret_int = fccl.assign_pr("2-4", "marty", "Urgent", "11/23/01 22:00:00",

                        "sam", false);