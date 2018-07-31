accept_case
-----------

Public Function accept_case(ByVal case_id As String, _
                            ByVal accept_date As String, _
                            ByVal wipbin_name As String, _
          ByVal user_name As String, _
          ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified case to be accepted from a dispatched queue. The case must be currently dispatched to a queue. The date/time of the accept, the WIPBin to place the case in, and the user performing the accept can be specified. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

case_id                                  Yes                         The case to accept

accept_date                          No                           When was the case accepted. If this parameter is left blank, the case is accepted at the current time

wipbin_name                        No                           The WIPBin to place the case in (for the user who accepted case)

If left blank, the case is placed in the user's default WIPBin

user_name                             No                           The user who accepted the case. If left blank, the current user performs

the accept

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Cannot find the specified case

-2                                             Case is not currently dispatched

-3                                             Specified user is not found

-4                                             The specified WIPBin is not valid for the user

-5                                             Cannot find gbst_elm rank 100 for string ACCEPT

**Examples**

 Accept Case number '10' right now for the current user, place in the default WIPBin, and generate

a time bomb.

**JavaScript:**

var ret_int = fccs.accept_case("10", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.accept_case("10", "", "", "", True)

 Accept case number '2' at 10PM on November 23rd of 1997 by marty, and place the case in marty's WIPBin named 'Urgent'. Don't generate a time bomb

**JavaScript:**

var ret_int = fccs.accept_case("2", "11/23/97 22:00:00", "Urgent",

                                  "marty", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.accept_case("2", "11/23/97 22:00:00", "Urgent", _
                           "marty", False)