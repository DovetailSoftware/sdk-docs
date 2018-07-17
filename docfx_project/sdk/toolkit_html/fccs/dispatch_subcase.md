dispatch_subcase
----------------

Public Function dispatch_subcase(ByVal subcase_id As String, _

                                 ByVal queue_name As String, _

                                 ByVal disp_date As String, _

                                 ByVal user_name As String, _

                                 ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified subcase to be dispatched to the specified queue. The subcase must be in open condition, and not currently dispatched to a queue. The API allows for the setting of the dispatch date, and the user who dispatched the subcase. The API can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

subcase_id                            Yes                         The subcase to dispatch

queue_name                         Yes                         The queue to dispatch to

disp_date                              No                           When was the subcase dispatched. If this parameter is left blank, the subcase

is dispatched at the current time

user_name                             No                           The user who dispatched the subcase. If left blank, the current user performs

the dispatch.

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             The subcase is already dispatched

-3                                             The subcase is closed and may not be dispatched

-4                                             The specified user cannot be found

-5                                             The specified new queue name cannot be found

-6                                             The DISPATCH activity string is not found

-7                                             The specified queue does not allow dispatches of subcases

-8                                             Cannot find the employee record for the designated user

**Examples  **

 Dispatch subcase number 'C154-1' to queue 'Hardware'. The dispatch is performed by the current user and is dispatched at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fccs.dispatch_subcase("C154-1", "Hardware", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.dispatch_subcase("C154-1", "Hardware", "", "", True)

 Dispatch subcase number '2-2' at 10PM on November 23rd of 1997 to 'Software'. Dispatch should be logged as performed by dave. Don't generate a time bomb.

**JavaScript:**

var ret_int = fccs.dispatch_subcase("2-2", "Software",

                                    "11/23/97 22:00:00", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.dispatch_subcase("2-2", "Software", "11/23/97 22:00:00", _

                                "dave", False)