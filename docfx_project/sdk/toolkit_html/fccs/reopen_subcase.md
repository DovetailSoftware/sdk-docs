reopen_subcase
--------------

Public Function reopen_subcase(ByVal subcase_id As String, _

                ByVal wipbin_name As String, ByVal status_str As String, _

                ByVal reopen_date As String, ByVal user_name As String, _

                ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified subcase to be reopened. The date/time of the reopen, the person performing the reopen, the WIPBIN to place the subcase in, and the new status of the subcase are specified. The person who reopens the subcase becomes the new owner. The WIPBin to place the subcase in may also be specified. If it is not, the subcase is placed in the user's default WIPBIN. This is augmented function from base Clarify, where the subcase is always placed in the default WIPBin. The status field is also augmented function. If the status is not specified, the subcase is placed in the default status for the Open condition. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

subcase_id                            Yes                         The subcase to reopen

wipbin_name                        No                           The WIPBin to place the subcase in. If left blank, the default WIPBin for

                                                                                the user is used

status_str                              No                           The new status for the subcase. If no status is specified, the default status

for Open Condition is used

reopen_date                          No                           When was the subcase reopened. If this parameter is left blank, the reopen

occurs at the current time

user_name                             No                           The user who reopened the subcase. If left blank, the current user performs

the reopen

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             The subcase is not closed

-3                                             Cannot find the specified user

-4                                             Cannot find the specified WIPBIN

-5                                             Cannot find the REOPEN activity string

-6                                             Cannot find the specified status

-7                                             Cannot find the employee record for the specified user

**Examples  **

 Reopen subcase number 'C154-1' by the current user at the current date/time. Place in the default WIPBin with the default status, and generate a time bomb.

**JavaScript: **

var ret_int = fccs.reopen_subcase("C154-1", "", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.reopen_subcase("C154-1", "", "", "", "", True)

 Reopen subcase number '2-2' at 10PM on November 23rd of 1997 by dave. Place in dave's WIPBin 'Urgent', with status 'User Error'. Don't generate a time bomb.

**JavaScript: **

var ret_int = fccs.reopen_subcase("2-2", "Urgent", "User Error",

                                  "11/23/97 22:00:00", "dave", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.reopen_subcase("2-2", "Urgent", "User Error", _

                              "11/23/97 22:00:00", "dave", True)