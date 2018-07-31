close_opp
---------

Function close_opp(ByVal opp_id As String, _

                   ByVal the_status As String, _

                   ByVal close_date As String, _

                   ByValu user_name As String, _

                   ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified opportunity to be closed. You may specify the status (in closed opportunity condition) for the opportunity, as well as the user name of the closer, and the date/time of the close. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

opp_id                                   Yes                         The ID of the opportunity to close

the_status                             No                           The new status for the opportunity. If blank, the default status for Closed

Opportunity condition is used

close_date                             No                           When was the opportunity closed? If this parameter is left blank, the

opportunity is closed at the current time

user_name                             No                           The user who closed the opportunity. If left blank, the current user performs

the close

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified status for the closed opportunity condition

-2                                             Cannot find the CLOSE OPP activity string

-3                                             Cannot find the specified opportunity

-4                                             The opportunity is already closed

-5                                             The opportunity cannot be closed since it is already dispatched

-6                                             The specified user is not found

-7                                             The employee for the specified user cannot be found

**Examples  **

 Close opportunity "32" at the current time with the current user. Put in closed status "close now". Generate a time bomb.

**JavaScript:**

   ret_int = fcsfa_obj.close_opp("32", "close now", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

   ret_int = fcsfa_obj.close_opp("32", "close now", "", "", True)