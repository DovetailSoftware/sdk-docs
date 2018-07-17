initial_response
----------------

Public Function initial_response(ByVal case_id As String, _

                                 ByVal resp_date As String, _

                                 ByVal user_name As String, _

                                 ByVal via_phone As Boolean, _

                                 ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API will mark the initial response to a case. The case supplied should not already have had the intial response marked because it can only be marked once for a given case. The response can be marked as being from a phone call (True), or from an email (False). The user who performed the initial response and the time of that response can be specified. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

case_id                                  Yes                         The case that the initial response is for

resp_date                              No                           When was the initial response logged.If this parameter is left

blank, the response is at the current time

user_name                             No                           The user who logged the initial response. If left blank, the current

user performs the logging. For business rules, it defaults to the

user_name who is executing the cbbatch

via_phone                             Yes                         Is the response via a phone call (True), or via email (False)

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified case

-2                                             The initial response date is earlier than the case creation date

-3                                             The case already has a marked initial response

-4                                             The specified user is not found

-5                                             The INITIAL RESPONSE activity string is not found

-6                                             Cannot find Employee record for specified user

**Examples  **

 Mark an initial response for case 'C154' via a phone call. The logging is performed by the current user and is performed at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fccs.initial_response("C154", "", "", true, true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.initial_response("C154", "", "", True, True)

 Mark an initial response via an email for case '2' at 10PM on November 23rd of 1997. It is logged by dave. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.initial_response("2", "11/23/97 22:00:00", "dave",

                                    false, false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.initial_response("2", "11/23/97 22:00:00", "dave", _

                                False, False)