forward_cr
----------

Public Function forward_cr(ByVal cr_id As String, _

   ByVal new_queue As String, _

                           ByVal forward_date As String, _

   ByVal notes As String, _

                           ByVal user_name As String, _

                           ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified change request to be reject-forwarded from one queue to another. The change request must be currently dispatched to a queue. The API allows for the setting of the forward date, some notes about the forward, and the user who forwarded the change request. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

cr_id                                       Yes                         The change request Id to be reject-forward

new_queue                           Yes                         The queue to forward to

forward_date                        No                           When was the change request forwarded. If this parameter is left blank, the

CR is forwarded at the current time

notes                                      No                           Optional notes about the reject-forward

user_name                             No                           The user who forwarded the change request. If left blank, the current user                                                                              performs the forward

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified change request

-2                                             Change request is not currently dispatched

-3                                             The new queue name specified is not found

-4                                             Reject-forward attempted to same queue as currently dispatched to

-5                                             The specified user is not found

-6                                             Cannot find gbst_elm rank 1100 for string FORWARD

-7                                             Not allowed to forward a CR to the specified queue

**Examples  **

 Reject-forward change request number '10' to queue 'Hardware'. The reject-forward has no notes, is performed by the current user and is forwarded at the current time. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccq.forward_cr("10", "Hardware", "", "", "", True)

**JavaScript:**

var ret_int = fccq.forward_cr("10", "Hardware", "", "", "", true);

 Reject-forward change request number '2' at 10PM on November 23rd of 1997 to queue 'Software'. Forward should be logged as performed by ann, with notes of 'Some notes'. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccq.forward_cr("2", "Software", "11/23/97 22:00:00", _

                          "Some notes", "ann", False)

**JavaScript:**

var ret_int = fccq.forward_cr("2", "Software", "11/23/97 22:00:00",

                          "Some notes", "ann", false);