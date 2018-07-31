change_subcase_status
-----------------------

Public Function change_subcase_status(ByVal subcase_id As String, _
                                      ByVal new_status As String, _
                                      ByVal change_date As String, _
                                      ByVal note_str As String, _
                                      ByVal user_name As String, _
                                      ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified subcase to have its status changed. The subcase may be opened or closed, but the status selected MUST be valid for the current condition. In other words, you cannot assign a close condition status to a subcase that is currently open. You may assign notes to the status change, as well as set the time of the status change, and the user who changed the status. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

subcase_id                            Yes                         The subcase to change status for

new_status                           No                           The new status for the subcase

change_date                         No                           When was the subcase status changed. If this parameter is left blank, the

subcase is status changed at the current time

note_str                                 No                           Notes for the status change

user_name                             No                           The user who changed the status. If left blank, the current user performs

the change status

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             Cannot find the new status (or status is not

defined for the current object's condition)

-3                                             Cannot find the specified user

-4                                             Cannot find the CHANGE STATUS activity string

**Examples**

 Change status for subcase number 'C154-1' to the default status. The change status is performed by the current user and is changed at the current time. Add no notes, and generate a time bomb.

**JavaScript:**

var ret_int = fccs.change_case_status("C154-1", "", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.change_subcase_status("C154-1", "", "", "", "", True)

 Change status for subcase number '2-2' at 10PM on November 23rd of 1997 to 'Solved'. Change status has notes of 'Some notes', and  should be logged as performed by dave. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.change_subcase_status("2-2", "Solved", "11/23/97 22:00:00",

                                        "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.change_subcase_status("2-2", "Solved", "11/23/97 22:00:00", _
                                     "Some notes", "dave", False)