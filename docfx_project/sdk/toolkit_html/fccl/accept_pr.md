accept_pr
---------

Public Function accept_pr(ByVal pr_id As String, _

      ByVal accept_date As String, ByVal wipbin_name As String, _

      ByVal user_name As String, ByVal gen_time_bombs As Boolean) _

                          As Integer

**Description**

This API causes the specified part request to be accepted from a dispatched queue. The part request must be currently dispatched to a queue. The date/time of the accept, the WIPBin to place the case in, and the user performing the accept can be specified. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

pr_id                                       Yes                         The part request to accept

accept_date                          No                           When was the part request accepted. If this parameter is left blank, the PR

is accepted at the current time

wipbin_name                        No                           The WIPBin to place the part request in (for the user who accepted PR)

If left blank, the part request is placed in the user's default WIPBin

user_name                             No                           The user who accepted the PR. If left blank, the current user performs

the accept

gen_time_bombs                 Yes                         Should a time_bomb be generated

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Cannot find the specified part request

-2                                             Part request is not currently in a queue

-3                                             Specified user is not a member of the queue

-4                                             The specified WIPBIN is not valid for the user

-5                                             Could not find gbst_elm string for ACCEPT with rank 100

**Examples**

 Accept PR number '1-14' right now for the current user, place in the default WIPBin, and generate

a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.accept_pr("1-14", "", "", "", True)

**Javascript:**

var ret_int = fccl.accept_pr("1-14", "", "", "", true);

 Accept part request number '2-1' at 10PM on November 23rd of 2001 by marty, and place the part request in marty's

WIPBin named 'Urgent'. Don't generate a time bomb

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.accept_pr("2-1", "11/23/2001 22:00:00", "Urgent", "marty", False)

**Javascript:**

ret_int = fccl.accept_pr("2-1", "11/23/2001 22:00:00", "Urgent", "marty", false)