reject_action_item
--------------------

reject_opportunity
------------------

reject_quote
------------

Public Function reject_action_item(ByVal the_id As String, _

                                   ByVal reject_date As String, _

                                   ByVal wipbin As String, _

                                   ByVal notes As String, _

                                   ByVal user_name As String, _

                                   ByVal gen_time_bombs As Boolean) As Integer

Public Function reject_opportunity(ByVal the_id As String, _

                                   ByVal reject_date As String, _

                                   ByVal wipbin As String, _

                                   ByVal notes As String, _

                                   ByVal user_name As String, _

                                   ByVal gen_time_bombs As Boolean) As Integer

Public Function reject_quote(ByVal the_id As String, _

                             ByVal reject_date As String, _

                             ByVal wipbin As String, _

                             ByVal notes As String, _

                             ByVal user_name As String, _

                             ByVal gen_time_bombs As Boolean) As Integer

**Description**

These APIs cause the specified action item, opportunity, or quote to be rejected from the queue it is in, and returned back to the owner. The object must be in open condition, and currently dispatched to a queue. The API allows for the setting of the reject date, some notes about the reject, and the user who rejected the object. The APIs also allow you to set the WIPBin that the object is placed back in. This is additional functionality that base Clarify does not provide. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

the_id                                     Yes                         The object to reject-forward

reject_date                            No                           When was the object rejected. If this parameter is left blank, the object

is rejected at the current time

wipbin                                    No                           The WIPBin to place the object in. If left blank, the default WIPBin

                                                                                is used

notes                                      No                           Optional notes about the reject

user_name                             No                           The user who rejected the object. If left blank, the current user performs

the reject. For business rules, it defaults to the user_name who is

executing the cbbatch

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified object

-2                                             The object is not currently dispatched

-3                                             Cannot find the specified user

-4                                             The object is currently closed - cannot dispatch

-5                                             Cannot find the new specified WIPBIN, or it is not a WIPBIN for the specified user

-6                                             Cannot find REJECT activity string

**Examples  **

 Reject action item number '154' to the default WIPBin. The reject has no notes, is performed by the current user and is rejected at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.reject_action_item("154", "", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.reject_action_item("154", "", "", "", "", True)

 Reject quote number 'Q2' at 10PM on November 23rd of 1997 to WIPBin 'East'. Reject should be logged as performed by dave, with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.reject_quote("Q2", "11/23/97 22:00:00", "East",

                                 "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.reject_quote("Q2", "11/23/97 22:00:00", "East", _

                      "Some notes", "dave", False)