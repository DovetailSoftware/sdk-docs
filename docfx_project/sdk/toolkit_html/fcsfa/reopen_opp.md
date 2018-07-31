reopen_opp
----------

Function reopen_opp(ByVal opp_id As String, _

                    ByVal the_status As String, _

                    ByVal wipbin As String, _

                    ByVal reopen_date As String, _

                    ByVal user_name As String, _

                    ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified opportunity to be reopened. You may specify the status (in open lead condition) for the opportunity, as well as the user name of the opener, and the date/time of the reopen. You may also specify the WIPBIN to place the opportunity in. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

opp_id                                   Yes                         The ID of the opportunity to close

the_status                             No                           The new status for the opportunity. If blank, the default status for Open Lead

condition is used

wipbin                                    No                           The WIPBIN in which to place the opportunity. If blank, the default WIPBIN

for the user is used

reopen_date                          No                           When was the opportunity reopened? If this parameter is left blank, the

opportunity is reopened at the current time

user_name                             No                           The user who reopened the opportunity. If left blank, the current user

performs the reopen

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified status for the open lead condition

-2                                             Cannot find the CHANGE OPP STATUS activity string

-3                                             Cannot find the specified opportunity

-4                                             The opportunity is not closed

-5                                             The specified user is not found

-6                                             The employee for the specified user cannot be found

-7                                             Cannot find the specified WIPBIN

**Examples  **

 Reopen opportunity "32" at the current time with the current user. Put in status "Active now". Put in WIPBIN "Important". Generate a time bomb.

**JavaScript:**

   ret_int = fcsfa_obj.reopen_opp("32", "Active now", "Important", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

   ret_int = fcsfa_obj.reopen_opp("32", "Active now", "Important", "", "", True)