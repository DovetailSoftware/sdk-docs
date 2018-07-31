dispatch_quote
--------------

Public Function dispatch_quote(ByVal quote_id As String, _
              ByVal queue_name As String, ByVal disp_date As String, _
              ByVal user_name As String, ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified quote to be dispatched to the specified queue. The quote must be in open condition, and not currently dispatched to a queue. The API allows for the setting of the dispatch date, and the user who dispatched the quote. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| quote_id | Yes | The quote to dispatch |
| queue_name | Yes | The queue to dispatch to |
| disp_date | No | When was the quote dispatched. If this parameter is left blank, the quote is dispatched at the current time |
| user_name | No | The user who dispatched the quote. If left blank, the current user performs the dispatch. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified quote

-2                                             The quote is already dispatched

-3                                             The quote is closed and may not be dispatched

-4                                             The specified user cannot be found

-5                                             The specified new queue name cannot be found

-6                                             The DISPATCH activity string is not found with rank = 900

-7                                             The specified queue does not allow dispatches of the quote

**Examples**

 Dispatch quote number '154' to queue 'Hardware'. The dispatch is performed by the current user and is dispatched at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.dispatch_quote("154", "Hardware", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.dispatch_quote("154", "Hardware", "", "", True)

 Dispatch quote number 'Q2' at 10PM on November 23rd of 2001 to 'Software'. Dispatch should be logged as performed by user 'sam'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.dispatch_quote("Q2", "Software", "11/23/2001 22:00:00", _
                              "sam", False)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.dispatch_quote("Q2", "Software", "11/23/2001 22:00:00", _
                              "sam", False)