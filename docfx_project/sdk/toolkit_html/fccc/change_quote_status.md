change_quote_status
---------------------

Public Function change_quote_status(ByVal quote_id As String, _
                                    ByVal new_status As String, _
                                    ByVal change_date As String, _
                                    ByVal note_str As String, _
                                    ByVal user_name As String, _
                                    ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified quote to have its status changed. The quote may be in any valid condition, but the status selected MUST be valid for the current condition. In other words, you cannot assign an Active Contract condition status to a quote that is currently in Quote condition. You may assign notes to the status change, as well as set the time of the status change, and the user who changed the status. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| quote_id | Yes | The quote to change status for |
| new_status | No | The new status for the quote |
| change_date | No | When was the quote status changed. If this parameter is left blank, the quote is status changed at the current time |
| note_str | No | Notes for the status change |
| user_name | No | The user who changed the status. If left blank, the current user performs the change status. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified quote

-2                                             Cannot find the new status (or status is not defined for the current quote's condition)

-3                                             Cannot find the specified user

-4                                             Cannot find the CHANGE STATUS activity string with rank = 13900

**Examples**

 Change status for quote number '154' to the default status. The change status is performed by the current user and is changed at the current time. Add no notes, and generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.change_quote_status("154", "", "", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.change_quote_status("154", "", "", "", "", True)

 Change status for quote number 'Q2' at 10PM on November 23rd of 2001 to 'Solved'. Change status has notes of 'Some notes', and  should be logged as performed by user 'sam'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.change_quote_status("154", "", "", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret ret_int = fc_cc.change_quote_status("154", "", "", "", "", True)