reject_pr
---------

Public Function reject_pr(ByVal pr_id As String, _

                          ByVal reject_date As String, ByVal wipbin_name As String, _

                          ByVal note_str As String, ByVal user_name As String, _

                          ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified part request to be rejected from the queue it is disptached to. The date and user performing the reject can be specified, and the call allows the part request to be placed back in any WIPBin of the owner. This is an augmentation over base Clarify where it is always rejected back to the default WIPBin. Also, the API allows for time bombs (for business rules) to be created, or not.

#### Parameters
**Parameter Name**                **Required?**             **Description**

pr_id                                       Yes                         The part request to reject

reject_date                            No                           When did the reject occur. If left blank, current time is used

wipbin_name                        No                           The owner's WIPBin in which to place the part request. If left blank,

                                                                                it is rejected to the default WIPBin

note_str                                 No                           Notes about the reject

user_name                             No                           Who performed the reject? If left blank, current user is used

gen_time_bombs                 Yes                         Should a time bomb record be created for business rule notification?

**Returns**

**Value**                **Meaning**

 0                                             No errors

-1                                             Cannot find the specified part request

-2                                             The part request is not currently dispatched

-3                                             Cannot find the specified user

-4                                             The part request is currently closed - cannot dispatch

-5                                             Cannot find the new specified WIPBIN, or it is not a WIPBIN for the specified user

-6                                             Cannot find REJECT activity string with rank = 2600

**Examples  **

 Reject part request number '1-14' to WIPBin 'Hardware'.  The reject occurs on August 1, 2001, and is performed by Marty. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.reject_pr("1-14", "8/1/2001", "Hardware", "notes", "marty", True)

**Javascript:**

var ret_int = fccl.reject_pr("1-14", "8/1/2001", "Hardware", "notes", "marty", true);

 Reject part request number '2-1' to the default WIPBin. Do the reject now and with the current user. Do not generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.reject_pr("2-1", "", "", "", "", False)

**Javascript:**

var ret_int = fccl.reject_pr("2-1", "", "", "", "", false);