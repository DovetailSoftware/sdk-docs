reject_subcase
--------------

Public Function reject_subcase(ByVal subcase_id As String, _

                ByVal reject_date As String, ByVal wipbin_name As String, _

                ByVal note_str As String, ByVal user_name As String, _

                ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified subcase to be rejected from the queue it is in, and returned back to the owner. The subcase must be in open condition, and currently dispatched to a queue. The API allows for the setting of the reject date, some notes about the reject, and the user who rejected the subcase. The API also allows you to set the WIPBin that the subcase is placed back in. This is additional functionality that base Clarify does not provide. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

subcase_id                            Yes                         The subcase to reject-forward

reject_date                            No                           When was the subcase rejected. If this parameter is left blank, the subcase

is rejected at the current time

wipbin                                    No                           The WIPBin to place the subcase in. If left blank, the default WIPBin

                                                                                is used

notes                                      No                           Optional notes about the reject

user_name                             No                           The user who rejected the subcase. If left blank, the current user performs

the reject

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             The subcase is not currently dispatched

-3                                             Cannot find the specified user

-4                                             The subcase is currently closed - cannot dispatch

-5                                             Cannot find the new specified WIPBIN, or it is not a WIPBIN for the specified user

-6                                             Cannot find REJECT activity string

**Examples  **

 Reject subcase number 'C154-1' to the default WIPBin. The reject has no notes, is performed by the current user and is rejected at the current time. Generate a time bomb.

**JavaScript: **

var ret_int = fccs.reject_subcase("C154-1", "", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.reject_subcase("C154-1", "", "", "", "", True)

 Reject subcase number '2-2' at 10PM on November 23rd of 1997 to WIPBin 'East'. Reject should be logged as performed by dave, with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript: **

var ret_int = fccs.reject_subcase("2-2", "11/23/97 22:00:00", "East",

                                  "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.reject_subcase("2-2", "11/23/97 22:00:00", "East", _

                              "Some notes", "dave", False)