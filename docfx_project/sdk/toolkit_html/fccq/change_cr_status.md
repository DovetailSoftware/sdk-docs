change_cr_status
------------------

Public Function change_cr_status(ByVal cr_id As String, _

   ByVal new_status As String, _

   ByVal change_date As String, _

   ByVal notes As String, _

   ByVal user_name As String, _

   ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified change request to have its status changed. The change request may be in any condition, but the new status MUST have the same condition as the change request's current condition. In other words, you cannot use this API to change the condition of a CR - you must use the proper API (fix, close, reopen) to do that. You may assign notes to the status change, as well as set the time of the status change, and the user who changed the status. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

cr_id                                       Yes                         The change request Id to change status for

new_status                           No                           The new status for the change request. If blank, the default status is used

change_date                         No                           When was the CR status changed. If this parameter is left blank, the CR is

status changed at the current time

notes                                      No                           Notes for the status change

user_name                             No                           The user who changed the status. If left blank, the current user performs

the change status

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified change request

-2                                             Cannot find the new status (or status is not defined for the current object's condition)

-3                                             Cannot find the specified user

-4                                             Cannot find gbst_elm rank 4900 for string CHG BUG STS

-5                                             Status transition not defined in Policies and Customers

-6                                             Status transition not allowed for specified user

-14                                           Privclass not found for specified user

-15                                           Old status not found for old condition

-16                                           New status not found for new condition

-17                                           Cannot find the specified user's employee record for relating time bomb

**Examples  **

 Change status for change request number '10' to the default status. The change status is performed by the current user and is changed at the current time. Add no notes, and generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccq.change_cr_status("10", "", "", "", "", True)

**JavaScript:**

var ret_int = fccq.change_cr_status("10", "", "", "", "", true);

 Change status for change request number '2' at 10PM on November 23rd of 1997 to 'Solved'. Change status has notes of 'Some notes', and  should be logged as performed by mark. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccq.change_cr_status("2", "Solved", _

                                "11/23/97 22:00:00", _

                                "Some notes", "mark", False)

**JavaScript:**

var ret_int = fccq.change_cr_status("2", "Solved",

                                "11/23/97 22:00:00",

                                "Some notes", "mark", false);