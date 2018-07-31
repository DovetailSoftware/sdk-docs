dispatch_action_item
--------------------

dispatch_opportunity
--------------------

dispatch_quote
--------------

Public Function dispatch_action_item(ByVal the_id As String, _
                                     ByVal queue_name As String, _
                                     ByVal disp_date As String, _
                                     ByVal user_name As String, _
                                     ByVal gen_time_bombs As Boolean) As Integer

Public Function dispatch_opportunity(ByVal the_id As String, _
                                     ByVal queue_name As String, _
                                     ByVal disp_date As String, _
                                     ByVal user_name As String, _
                                     ByVal gen_time_bombs As Boolean) As Integer

Public Function dispatch_quote(ByVal the_id As String, _
                               ByVal queue_name As String, _
                               ByVal disp_date As String, _
                               ByVal user_name As String, _
                               ByVal gen_time_bombs As Boolean) As Integer

**Description**

These APIs cause the specified object (action_item, opportunity, quote) to be dispatched to the specified queue. The object must be in open condition, and not currently dispatched to a queue. The API allows for the setting of the dispatch date, and the user who dispatched the object. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

the_id                                     Yes                         The object (action_item, opportunity, quote) to dispatch

queue_name                         Yes                         The queue to dispatch to

disp_date                              No                           When was the object dispatched. If this parameter is left blank, the case

is dispatched at the current time

user_name                             No                           The user who dispatched the object. If left blank, the current user performs

the dispatch.

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified object

-2                                             The object is already dispatched

-3                                             The object is closed and may not be dispatched

-4                                             The specified user cannot be found

-5                                             The specified new queue name cannot be found

-6                                             The DISPATCH activity string is not found

-7                                             The specified queue does not allow dispatches of this specific object type

-8                                             Cannot find the employee record for the designated user

**Examples**

 Dispatch action item number '154' to queue 'Hardware'. The dispatch is performed by the current user and is dispatched at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.dispatch_action_item("154", "Hardware", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.dispatch_action_item("154", "Hardware", "", "", True)

 Dispatch quote number '2' at 10PM on November 23rd of 1997 to 'Software'. Dispatch should be logged as performed by dave. Don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.dispatch_quote("2", "Software",

                                   "11/23/97 22:00:00", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.dispatch_quote("2", "Software", "11/23/97 22:00:00", _
                               "dave", False)