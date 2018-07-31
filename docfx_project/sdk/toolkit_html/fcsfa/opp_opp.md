opp_opp
-------

Public Function opp_opp(opp_id As String, _
                        new_status As String, _
                        the_note As String, _
                        user_name As String, _
                        change_date As String, _
                        gen_time_bombs As Boolean) As Integer

**Description**

This API allows you to mark an opportunity as an "Opportunity." It changes both the cycle stage and the opportunity. It also allows you to specify an optional note about the change, who performed the change, as well as when they performed the change. All of these can be left blank - see below for more details.

There are three significant differences between this API, and the base Clarify function.

 This API allows you to specify a new status for the opportunity. In base Clarify, you must always use the default status for the opportunity. If you leave the string blank for these APIs, the default will be used.

 Since the API allows for the changing of status, the activity log entries now reflect the new status as well as the cycle change/condition change.

 The activity logs for the base function contain the date of the action in the additional information. Since that is also shown in the date/time field, it is pointless, and was removed. Also, Clarify places return characters in the additional information field. This makes it impossible to read from the activity log form. Those have been removed for the API.

The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

opp_id                                   Yes                         The opportunity to mark as an opportunity

new_status                           No                           New status of the opportunity. If blank, default status is used.

the_note                                                No                           Optional note about the change

user_name                             No                           The user who performed the change. If left blank, the current user performs

the change. For business rules, it defaults to the user_name who is

executing the cbbatch

change_date                         No                           When was the opportunity changed. If this parameter is left blank, the object

is changed at the current date/time

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             An invalid condition was supplied (internal error - should not ever occur)

-2                                             The opportunity specified cannot be found

-3                                             The opportunity is already closed

-4                                             The opportunity is currently dispatched

-5                                             Cannot find the specified user

-6                                             The specified status cannot be found for the new condition

-7                                             Cannot find the cycle stage for this condition

-8                                             Cannot find the activity code for the status change event

**Examples**

 Mark opportunity '44' as an opportunity. Add some notes, and the change occurs now and is performed by the current user. Assume that we'll use the default status. Generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.opp_opp("44", "", "Some notes!!", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.opp_opp("44", "", "Some notes!!", "", "", True)

 Opportunity '42' is changed to an opportunity at 10PM on November 23rd of 1997. Change should be logged as performed by dave, with notes of 'Some notes'. Set the status to "Another status." Don't generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.opp_opp("42", "Another status", "Some notes!!",

                             "dave", "11/23/97 22:00:00", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.opp_opp("42", "Another status", "Some notes!!", _
                         "dave", "11/23/97 22:00:00", False)