assign_solution
---------------

Public Function assign_solution(ByVal solution_id As String, _

                                ByVal new_user As String, _

                                ByVal wipbin As String, _

                                ByVal assign_date As String, _

                                ByVal user_name As String, _

                                ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified solution to be assigned to a new user. The solution must not be in closed condition, and the user assigning the solution does not have to be the owner. In base Clarify, the assigner of a solution must be the owner. If either user name is not specified, the "current" user is used. The date/time of the assignment, and the WIPBin to place the solution in can also be specified. Allowing a WIPBin other than the default one is also an augmentation from base Clarify.  The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

solution_id                            Yes                         The solution to assign

new_user                               No                           The user who the solution is assigned to. If left blank, it is assigned

to the current user

wipbin                                    No                           The WIPBin to place the solution in (for the user who is assigned

the solution). If left blank, it is placed in the user's default WIPBin

assign_date                          No                           When was the solution assigned. If this parameter is left blank, it

is assigned at the current time

user_name                             No                           The user who assigned the solution. If left blank, the current

user performs the assign.

gen_time_bombs                 Yes                         Should a time bomb record be created for business rule notification?

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified solution

-2                                             The specified solution is currently closed

-3                                             Specified user (to assign to) is not found

-4                                             The specified WIPBIN is not valid for the user

-5                                             Specified user (who performed the assign) is not found

-6                                             Could not find gbst_elm string for ASSIGN with rank equal to 10500

**Examples  **

 Assign solution number '154' to user 'marty'. The assign is performed by the current user, is placed in the default WIPBin and is assigned at the current time. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.assign_solution("154", "marty", "", _

                                  "", "", true)

**Javascript:**

var ret_int = fcinter.assign_solution("154", "marty", "",                                  

     "", "", true);

 Assign solution number '4' at 10PM on November 23rd of 1997 to marty, and place the solution in marty's

WIPBin named 'Urgent'. Assign should be logged as performed by sam. Don't generate a time bomb

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.assign_solution("4", "marty", "Urgent", _

 "11/23/97 22:00:00", "sam", false)

**Javascript:**

var ret_int = fcinter.assign_solution("4", "marty", "Urgent",

 "11/23/97 22:00:00", "sam", false);