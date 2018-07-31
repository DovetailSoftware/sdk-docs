forward_action_item
---------------------

forward_opportunity
-------------------

forward_quote
-------------

Public Function forward_action_item(ByVal the_id As String, _
                                    ByVal new_queue As String, _
                                    ByVal forward_date As String, _
                                    ByVal notes As String, _
                                    ByVal user_name As String, _
                                    ByVal gen_time_bombs As Boolean) As Integer

Public Function forward_opportunity(ByVal the_id As String, _
                                    ByVal new_queue As String, _
                                    ByVal forward_date As String, _
                                    ByVal notes As String, _
                                    ByVal user_name As String, _
                                    ByVal gen_time_bombs As Boolean) As Integer

Public Function forward_quote(ByVal the_id As String, _
                              ByVal new_queue As String, _
                              ByVal forward_date As String, _
                              ByVal notes As String, _
                              ByVal user_name As String, _
                              ByVal gen_time_bombs As Boolean) As Integer

**Description**

These APIs cause the specified action item, opportunity, or quote to be reject-forwarded from one queue to another. The object must be in open condition, and currently dispatched to a queue. The API allows for the setting of the forward date, some notes about the forward, and the user who forwarded the object. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| The_id | Yes | The object to reject-forward |
| new_queue | Yes | The queue to forward to |
| forward_date | No | When was the object forwarded. If this parameter is left blank, the object is forwarded at the current time |
| notes | No | Optional notes about the reject-forward |
| user_name | No | The user who forwarded the object. If left blank, the current user performs the forward. For business rules, it defaults to the user_name who is executing the cbbatch |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified object

-2                                             Object is not currently dispatched

-3                                             The new queue name specified is not found

-4                                             Reject-forward attempted to same queue as currently dispatched to

-5                                             The specified user is not found

-6                                             The FORWARD activity string is not found

**Examples**

 Reject-forward action item number '154' to queue 'Hardware'. The reject-forward has no notes, is performed by the current user and is forwarded at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.forward_action_item("154", "Hardware", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.forward_action_item("154", "Hardware", "", "", "", True)

 Reject-forward quote number 'Q2' at 10PM on November 23rd of 1997 to 'Software'. Forward should be logged as performed by dave, with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.forward_quote("Q2", "Software", "11/23/97 22:00:00",

                              "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.forward_quote("Q2", "Software", "11/23/97 22:00:00", _
                              "Some notes", "dave", False)