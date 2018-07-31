forward_case
------------

Public Function forward_case(ByVal case_id As String, _
                             ByVal new_queue As String, _
                             ByVal forward_date As String, _
                             ByVal note_str As String, _
                             ByVal user_name As String, _
                             ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified case to be reject-forwarded from one queue to another. The case must be in open condition, and currently dispatched to a queue. The API allows for the setting of the forward date, some notes about the forward, and the user who forwarded the case. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | The case to reject-forward |
| new_queue | Yes | The queue to forward to |
| forward_date | No | When was the case forwarded. If this parameter is left blank, the case is forwarded at the current time |
| notes | No | Optional notes about the reject-forward |
| user_name | No | The user who forwarded the case. If left blank, the current user performs the forward |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             Case is not currently dispatched

-3                                             The new queue name specified is not found

-4                                             Reject-forward attempted to same queue as currently dispatched to

-5                                             The specified user is not found

-6                                             The FORWARD activity string is not found

-7                                             Can not forward Case to specified queue

**Examples**

 Reject-forward case number 'C154' to queue 'Hardware'. The reject-forward has no notes, is performed by the current user and is forwarded at the current time. Generate a time bomb.

**JavaScript:**

ret_int = fccs.forward_case("C154", "Hardware", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.forward_case("C154", "Hardware", "", "", "", True)

 Reject-forward case number '2' at 10PM on November 23rd of 1997 to 'Software'. Forward should be logged as performed by dave, with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.forward_case("2", "Software", "11/23/97 22:00:00",

                                "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.forward_case("2", "Software", "11/23/97 22:00:00", _
                            "Some notes", "dave", False)