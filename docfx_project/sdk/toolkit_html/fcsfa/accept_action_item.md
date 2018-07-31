accept_action_item
------------------

accept_opportunity
------------------

accept_quote
------------

Public Function accept_action_item(ByVal the_id As String, _
                                   ByVal accept_date As String, _
                                   ByVal wipbin As String, _
                                   ByVal user_name As String, _
                 ByVal gen_time_bombs As Boolean) As Integer

Public Function accept_opportunity(ByVal the_id As String, _
                                   ByVal accept_date As String, _
                                   ByVal wipbin As String, _
                                   ByVal user_name As String, _
                 ByVal gen_time_bombs As Boolean) As Integer

Public Function accept_quote(ByVal the_id As String, _
                             ByVal accept_date As String, _
                             ByVal wipbin As String, _
                             ByVal user_name As String, _
           ByVal gen_time_bombs As Boolean) As Integer

**Description**

These APIs cause the specified action item, opportunity, or quote to be accepted from a dispatched queue. The object  must be currently dispatched to a queue. The date/time of the accept, the WIPBin to place the object in, and the user performing the accept can be specified. The API can also generate a time bomb (for business rule notification).

#### Parameters

**Parameter Name**                **Required?**             **Description**

the_id                                     Yes                         The action item, opportunity, or quote to accept

accept_date                          No                           When was the object accepted. If this parameter is left blank, the object is accepted at the current time

wipbin                                    No                           The WIPBin to place the object in (for the user who did the accept) If left blank, the object is placed in the user's default WIPBin

user_name                             No                           The user who accepted the object. If left blank, the current user performs the accept

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Cannot find the specified action item, opportunity, or quote

-2                                             Action Item, opportunity, or quote is not currently dispatched

-3                                             Specified user is not found

-4                                             The specified WIPBin is not valid for the user

-5                                             Cannot find gbst_elm rank 100 for string ACCEPT

**Examples**

 Accept Action Item number '10' right now for the current user, place in the default WIPBin, and generate

a time bomb.

**JavaScript:**

var ret_int = fcsfa.accept_action_item("10", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.accept_action_item("10", "", "", "", True)

 Accept quote number '2' at 10PM on November 23rd of 1997 by marty, and place it in marty's WIPBin named 'Urgent'. Don't generate a time bomb

**JavaScript:**

var ret_int = fcsfa.accept_quote("2", "11/23/97 22:00:00", "Urgent",

                                    "marty", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.accept_quote("2", "11/23/97 22:00:00", "Urgent", _
                             "marty", False)