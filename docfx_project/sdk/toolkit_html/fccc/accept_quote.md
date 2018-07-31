## accept_quote

---

Public Function accept_quote(ByVal quote_id As String, _
                             ByVal accept_date As String, _
                             ByVal wipbin_name As String, _
                             ByVal user_name As String, _
                             ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API cause the specified quote to be accepted from a dispatched queue. The quote must be currently dispatched to a queue. The date/time of the accept, the WIPBin to place the quote in, and the user performing the accept can be specified. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| quote_id | Yes | The quote to accept |
| accept_date | No | When was the quote accepted. If this parameter is left blank, the quote is accepted at the current time |
| wipbin_name | No | The WIPBin to place the quote in (for the user who accepted the quote) If left blank, the quote is placed in the user's default WIPBin |
| user_name | No | The user who accepted the quote. If left blank, the current user performs the accept. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Cannot find the specified contract

-2                                             Quote is not currently dispatched

-3                                             Specified user is not a member of the queue

-4                                             The specified WIPBIN is not valid for the user

-5                                             Could not find gbst_elm string for ACCEPT with rank = 100

**Examples**

 Accept quote number 'Q2' right now for the current user, place in the default WIPBin, and generate

a time bomb.

**JavaScript:**

var ret_int = fccc.accept_case("Q2", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccc.accept_case("Q2", "", "", "", True)

 Accept quote number 'Q2' at 10PM on November 23rd of 2001 by user 'marty', and place it in marty's

WIPBin named 'Urgent'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccc.accept_case("Q2", "11/23/2001 22:00:00", "Urgent", "marty", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccc.accept_case("Q2", "11/23/2001 22:00:00", "Urgent", "marty", True)