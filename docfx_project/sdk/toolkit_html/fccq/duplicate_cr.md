duplicate_cr
------------

Public Function duplicate_cr(ByVal cr_id As String, _

     ByVal the_status As String, _

                             ByVal master_cr As String, _

     ByVal user_name As String, _

                             ByVal close_date As String, _

                             ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API closes the specified CR as a duplicate of the "master CR". The CR is placed in "CR Duplicate/Closed" condition, and in the specified status. You may specify the user performing the duplication, as well as when it occurred. A time bomb may be generated for business rule notification.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

cr_id                                       Yes                         The change request to mark as a duplicate

the_status                             No                           The new status for the duplicate CR. If blank, the default status for

the condition is used

master_cr                               Yes                         The ID of the master (parent) CR

user_name                             No                           The user who duplicated the change request. If left blank, the current user                                                                             performs the marking

close_date                             No                           When was the duplication. If blank, the current date/time is used

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified change request

-2                                             The CR is already closed

-3                                             The CR is currently dispatched

-4                                             Cannot find the specified user

-5                                             Cannot find gbst_elm rank 7300 for string  CHG STS:DUPL

-6                                             Cannot find the new status

-7                                             Cannot find the master CR

-8                                             The master CR is already marked as a duplicate

-9                                             Status transition not defined in Policies and Customers

-10                                           Status transition not allowed for specified user

-18                                           Privclass not found for specified user

-19                                           Old status not found for old condition

-20                                           New status not found for new condition

-21                                           Cannot find the specified user's employee record for relating time bomb

**Examples  **

 Mark CR '2' as a duplicate of CR '4' with a new status of 'Double Entry". Gary performed the close at 8AM on March 29, 1999. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccq.duplicate_cr("2", "Double Entry", "4", "gary", _

       "3/29/99 08:00:00", True)

**JavaScript:**

var ret_int = fccq.duplicate_cr("2", "Double Entry", "4", "gary",

       "3/29/99 08:00:00", true);