reopen_pr
---------

Public Function reopen_pr(ByVal pr_id As String, _
                          ByVal new_status As String, ByVal wipbin_name As String, _
                          ByVal reopen_date As String, ByVal user_name As String, _
                          ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified part request to be reopened. If the part request is not currently closed, the API will reject the attempt. The caller may specify the new status (in condition "RQST Reopened"), and the date of reopen, as well as the user performing the reopen. The WIPBIN in which to place the part request can be specified, which is an augmentation to base Clarify. If no WIPBIN is specified, the default one is used.

The API will validate that the user has authority to make the status transition. Also, the API allows for time bombs (for business rules) to be created, or not.

#### Parameters
**Parameter Name**                **Required?**             **Description**

pr_id                                       Yes                         The part request to reject

new_status                           No                           The status (in condition RQST REOPENED) for the part request. If left

                                                                                blank, the default status is used

wipbin_name                        No                           The WIPBIN to place the part request in.  If left blank, the default WIPBIN

                                                                                for the user is used

reopen_date                          No                           When did the reopen occur. If left blank, current time is used

user_name                             No                           Who performed the reopen? If left blank, current user is used

gen_time_bombs                 Yes                         Should a time bomb record be created for business rule notification?

**Returns**

**Value**                **Meaning**

 0                                             No errors

-1                                             Cannot find the specified part request

-2                                             The part request is not closed

-3                                             Cannot find the specified user

-4                                             Cannot find the REOPEN PART REQUEST activity string with rank = 459752540

-5                                             The transition to RQST REOPENED condition does not exist

-6                                             The user is not authorized to make the transition to RQST REOPENED condition

-7                                             The new status is not found for RQST REOPENED condition

-8                                             Cannot find the specified WIPBIN

-9                                             The employee record for the specified user cannot be found

**Examples**

 Reopen part request number '1-14' to WIPBin 'Hardware'.  The status should be "Reopen again!", and it was performed by Cindy. The reopen occurs on August 1, 2001. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.reopen_pr("1-14", "Reopen again!", "Hardware", "8/1/2001", _
                         "cindy", True)

**Javascript:**

var ret_int = fccl.reopen_pr("1-14", "Reopen again!", "Hardware", "8/1/2001",

                         "cindy", true);

 Reopen part request number '2-1' to the default WIPBin, default status. Do the reject now and with the current user. Do not generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.reopen_pr("2-1", "", "", "", "", False)

**Javascript:**

var ret_int = fccl.reopen_pr("2-1", "", "", "", "",false);