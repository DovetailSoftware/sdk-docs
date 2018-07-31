yank_subcase
------------

Public Function yank_subcase(ByVal subcase_id As String, _
                ByVal wipbin_name As String, ByVal yank_date As String, _
                ByVal user_name As String, _
                ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified subcase to be yanked from the current location to a new owner's WIPBin. The date/time of the yank, and the person yanking the subcase are specified. The person who yanks the subcase becomes the new owner. The WIPBin to place the subcase in may also be specified. This is augmented function from base Clarify, where the subcase is always placed in the default WIPBin. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| subcase_id | Yes | The subcase to yank |
| wipbin | No | The WIPBin to place the subcase in. If left blank, the default WIPBin for the user is used |
| yank_date | No | When was the subcase yanked. If this parameter is left blank, the yank occurs at the current time |
| user_name | No | The user who yanked the subcase. If left blank, the current user performs the yank |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             The subcase is already closed

-3                                             Cannot find the specified user

-4                                             Cannot find the specified WIPBIN

-5                                             Cannot find the YANK activity string

**Examples**

 Yank subcase number 'C154-1' by the current user at the current date/time. Place in the default WIPBin, generate a time bomb.

**JavaScript: **

var ret_int = fccs.yank_subcase("C154-1", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.yank_subcase("C154-1", "", "", "", True)

 Yank subcase number '2-2' at 10PM on November 23rd of 1997 by dave. Place in dave's WIPBin 'Urgent'. Don't generate a time bomb.

**JavaScript: **

var ret_int = fccs.yank_subcase("2-2", "Urgent", "11/23/97 22:00:00", "dave",

                             true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.yank_subcase("2-2", "Urgent", "11/23/97 22:00:00", _
                            "dave", True)