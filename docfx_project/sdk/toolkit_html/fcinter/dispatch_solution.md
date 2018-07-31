dispatch_solution
-----------------

Public Function dispatch_solution(ByVal solution_id As String, _

                                  ByVal queue_name As String, _

                                  ByVal disp_date As String, _

                                  ByVal user_name As String, _

                                  ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified solution to be dispatched to the specified queue. The solution must be in open condition, and not currently dispatched to a queue. The API allows for the setting of the dispatch date, and the user who dispatched the solution. The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

solution_id                            Yes                         The solution to dispatch

queue_name                         Yes                         The queue to dispatch to

disp_date                              No                           When was solution dispatched. If this parameter is left blank, the solution

is dispatched at the current time

user_name                             No                           The user who dispatched the solution. If left blank, the current user

performs the dispatch

gen_time_bombs                 Yes                         Should a time bomb record be created for business rule notification?

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified solution

-2                                             The solution is already dispatched

-3                                             The solution is closed and may not be dispatched

-4                                             The specified user cannot be found

-5                                             The specified new queue name cannot be found

-6                                             Cannot find the activity string for "Dispatch" rank equal to 900

-7                                             The specified queue does not allow dispatches of solutions

**Examples  **

 Dispatch solution number '14' to queue 'Hardware'. The dispatch is performed by the current user and is dispatched at the current time. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.dispatch_solution("14", "Hardware", _

                                     "", "", true)

**Javascript:**

var ret_int = fcinter.dispatch_solution("14", "Hardware",

                                     "", "", true);

 Dispatch solution number '2' at 10PM on November 23rd of 1997 to 'Software'. Dispatch should be logged as performed by Nancy. Don't generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.dispatch_solution("2", "Software", _

                                    "11/23/97 22:00:00", _

                                    "nancy", false)

**Javascript:**

var ret_int = fcinter.dispatch_solution("2", "Software",

                                    "11/23/97 22:00:00",

                                    "nancy", false);