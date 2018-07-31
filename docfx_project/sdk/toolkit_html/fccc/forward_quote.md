forward_quote
-------------

Public Function forward_quote(ByVal quote_id As String, _
                         ByVal new_queue As String, ByVal forward_date As String, _
                         ByVal note_str As String, ByVal user_name As String, _
                         ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified quote to be reject-forwarded from one queue to another. The object must be in open condition, and currently dispatched to a queue. The API allows for the setting of the forward date, some notes about the forward, and the user who forwarded the object. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| quote_id | Yes | The object to reject-forward |
| new_queue | Yes | The queue to forward to |
| forward_date | No | When was the quote forwarded. If this parameter is left blank, the quote is forwarded at the current time |
| note_str | No | Optional notes about the reject-forward |
| user_name | No | The user who forwarded the quote. If left blank, the current user performs the forward. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified quote

-2                                             Quote is not currently dispatched

-3                                             The new queue name specified is not found

-4                                             Reject-forward attempted to same queue as currently dispatched to

-5                                             The specified user is not found

-6                                             The FORWARD activity string is not found with rank = 1100

**Examples**

 Reject-forward quote number '154' to queue 'Hardware'. The reject-forward has no notes, is performed by the current user and is forwarded at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.forward_quote("154", "Hardware", "", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.forward_quote("154", "Hardware", "", "", "", True)

 Reject-forward quote number 'Q2' at 10PM on November 23rd of 2001 to 'Software'. Forward should be logged as performed by user 'sam', with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript:**

Var ret_int = fc_cc.forward_quote("Q2", "Software", "11/23/2001 22:00:00", _
                             "Some notes", "sam", False)

 **Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.forward_quote("Q2", "Software", "11/23/2001 22:00:00", _
                             "Some notes", "sam", False)