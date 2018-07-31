forward_subcase
---------------

Public Function forward_subcase(ByVal subcase_id As String, _

                                ByVal new_queue As String, _

                                ByVal forward_date As String, _

                                ByVal note_str As String, _

                                ByVal user_name As String, _

                                ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified subcase to be reject-forwarded from one queue to another. The subcase must be in open condition, and currently dispatched to a queue. The API allows for the setting of the forward date, some notes about the forward, and the user who forwarded the subcase. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

subcase_id                            Yes                         The subcase to reject-forward

new_queue                           Yes                         The queue to forward to

forward_date                        No                           When was the subcase forwarded. If this parameter is left blank, the subcase

is forwarded at the current time

notes                                      No                           Optional notes about the reject-forward

user_name                             No                           The user who forwarded the subcase. If left blank, the current user performs

the forward

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             Subcase is not currently dispatched

-3                                             The new queue name specified is not found

-4                                             Reject-forward attempted to same queue as currently dispatched to

-5                                             The specified user is not found

-6                                             The FORWARD activity string is not found

-7                                             Can not forward Case to specified queue

**Examples  **

 Reject-forward subcase number 'C154-1' to queue 'Hardware'. The reject-forward has no notes, is performed by the current user and is forwarded at the current time. Generate a time bomb.

**JavaScript:**

ret_int = fccs.forward_subcase("C154-1", "Hardware", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.forward_subcase("C154-1", "Hardware", "", "", "", True)

 Reject-forward subcase number '2-2' at 10PM on November 23rd of 1997 to 'Software'. Forward should be logged as performed by dave, with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.forward_subcase("2-2", "Software", "11/23/97 22:00:00",

                                   "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.forward_subcase("2-2", "Software", "11/23/97 22:00:00", _

                               "Some notes", "dave", False)