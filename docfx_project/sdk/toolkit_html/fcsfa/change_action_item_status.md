change_action_item_status
---------------------------

change_opportunity_status
---------------------------

change_quote_status
---------------------

Public Function change_action_item_status(ByVal the_id As String, _
                                   ByVal new_status As String, _
                                   ByVal change_date As String, _
                                   ByVal notes As String, _
                                   ByVal local_user_name As String, _
                                   ByVal gen_time_bombs As Boolean) As Integer

Public Function change_opportunity_status(ByVal the_id As String, _
                                   ByVal new_status As String, _
                                   ByVal change_date As String, _
                                   ByVal notes As String, _
                                   ByVal local_user_name As String, _
                                   ByVal gen_time_bombs As Boolean) As Integer

Public Function change_quote_status(ByVal the_id As String, _
                                    ByVal new_status As String, _
                                    ByVal change_date As String, _
                                    ByVal notes As String, _
                                    ByVal local_user_name As String, _
                                    ByVal gen_time_bombs As Boolean) As Integer

**Description**

These APIs cause the specified action item, opportunity, or quote to have its status changed. The object may be in any valid condition, but the status selected MUST be valid for the current condition. In other words, you cannot assign a Won condition status (for an opportunity) to an opportunity that is currently in Lost condition. You may assign notes to the status change, as well as set the time of the status change, and the user who changed the status. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| the_id | Yes | The ID of the object to change status for |
| new_status | No | The new status for the object |
| change_date | No | When was the object status changed. If this parameter is left blank, the object is status changed at the current time |
| notes | No | Notes for the status change |
| local_user_name | No | The user who changed the status. If left blank, the current user performs the change status. For business rules, it defaults to the user_name who is executing the cbbatch |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified object

-2                                             Cannot find the new status (or status is not defined for the current object's condition)

-3                                             Cannot find the specified user

-5                                             Cannot find the CHANGE STATUS activity string

**Examples**

 Change status for opportunity number '154' to the default status. The change status is performed by the current user and is changed at the current time. Add no notes, and generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.change_opportunity_status("154", "", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.change_opportunity_status("154", "", "", "", "", True)

 Change status for quote number '2' at 10PM on November 23rd of 1997 to 'Solved'. Change status has notes of 'Some notes', and  should be logged as performed by dave. Don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.change_quote_status("2", "Solved", "11/23/97 22:00:00",

                                        "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.change_quote_status("2", "Solved", "11/23/97 22:00:00", _
                                    "Some notes", "dave", False)