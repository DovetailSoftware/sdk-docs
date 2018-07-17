yank_solution
-------------

Public Function yank_solution(ByVal solution_id As String, _

                              ByVal wipbin As String, _

                              ByVal yank_date As String, _

                              ByVal user_name As String, _

                              ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified solution to be yanked and placed in a specific WIPBin. The person perfoming the yank (the new owner) and the time of the yank can be specified. Also, the API allows for time bombs (for business rules) to be created, or not.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

solution_id                            Yes                         The solution  to yank

wipbin                                    No                           The WIPBin in which to place the solution. If left blank,

                                                                                it is yanked to the default WIPBin

yank_date                             No                           The date/time to yank the solution. If left blank, the current date/time is

used

user_name                             No                           Who performed the yank? If left blank, current user is used

gen_time_bombs                 Yes                         Should a time bomb record be created for business rule notification?

**Returns**

**Value                                     Meaning                                                                                                                                               **

 0                                             No errors

-1                                             Cannot find the specified solution

-2                                             The solution is already closed

-3                                             Cannot find the specified user

-4                                             Cannot find the specified WIPBIN

-5                                             Cannot find the activity string for "Yank" rank equal to 4100

**Examples  **

 Yank solution number '14' to WIPBin 'Hardware'.  The yank occurs on August 1, 1998, and is performed by Marty. Generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.yank_solution("14", "Hardware", _

                                "8/1/98", "marty", true)

**Javascript:**

var ret_int = fcinter.yank_solution("14", "Hardware",

                                "8/1/98", "marty", true);

 Yank solution number '2' to the default WIPBin. Do the yank now and with the current user. Do not generate a time bomb.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.yank_solution("2", "", "", "", false)

**Javascript:**

var ret_int = fcinter.yank_solution("2", "", "", "", false);