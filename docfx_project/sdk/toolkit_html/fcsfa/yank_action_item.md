yank_action_item
------------------

yank_opportunity
----------------

yank_quote
----------

Public Function yank_action_item(ByVal the_id As String, _

                                 ByVal wipbin As String, _

                                 ByVal yank_date As String, _

                                 ByVal user_name As String, _

                                 ByVal gen_time_bombs As Boolean) As Integer

Public Function yank_opportunity(ByVal the_id As String, _

                                 ByVal wipbin As String, _

                                 ByVal yank_date As String, _

                                 ByVal user_name As String, _

                                 ByVal gen_time_bombs As Boolean) As Integer

Public Function yank_quote(ByVal the_id As String, _

                                 ByVal wipbin As String, _

                                 ByVal yank_date As String, _

                                 ByVal user_name As String, _

                                 ByVal gen_time_bombs As Boolean) As Integer

**Description**

These APIs cause the specified action item, opportunity, or quote to be yanked from the current location to a new owner's WIPBin. The date/time of the yank, and the person yanking the object are specified. The person who yanks the object becomes the new owner. The WIPBin to place the object in may also be specified. This is augmented function from base Clarify, where the object is always placed in the default WIPBin. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

the_id                                     Yes                         The object to yank

wipbin                                    No                           The WIPBin to place the object in. If left blank, the default WIPBin for the user is used

yank_date                             No                           When was the object yanked. If this parameter is left blank, the yank occurs at the current time

user_name                             No                           The user who yanked the object. If left blank, the current user performs the yank. For business rules, it defaults to the user_name who is executing the cbbatch

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified object

-2                                             The object is already closed

-3                                             Cannot find the specified user

-4                                             Cannot find the specified WIPBIN

-5                                             Cannot find the YANK activity string

**Examples  **

 Yank action item number '154' by the current user at the current date/time. Place in the default WIPBin, generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.yank_action_item("154", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.yank_action_item("154", "", "", "", True)

 Yank quote number 'Q2' at 10PM on November 23rd of 1997 by dave. Place in dave's WIPBin 'Urgent'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.yank_quote("Q2", "Urgent", "11/23/97 22:00:00",

                               "dave", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.yank_quote("Q2", "Urgent", "11/23/97 22:00:00", "dave", True)