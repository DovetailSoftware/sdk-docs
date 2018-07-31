reject_case
-----------

Public Function reject_case(ByVal case_id As String, _
                ByVal reject_date As String, ByVal wipbin_name As String, _
                ByVal note_str As String, ByVal user_name As String, _
                ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API causes the specified case to be rejected from the queue it is in, and returned back to the owner. The case must be in open condition, and currently dispatched to a queue. The API allows for the setting of the reject date, some notes about the reject, and the user who rejected the case. The API also allows you to set the WIPBin that the case is placed back in. This is additional functionality that base Clarify does not provide. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | The case to reject-forward |
| reject_date | No | When was the case rejected. If this parameter is left blank, the case is rejected at the current time |
| wipbin | No | The WIPBin to place the case in. If left blank, the default WIPBin is used |
| notes | No | Optional notes about the reject |
| user_name | No | The user who rejected the case. If left blank, the current user performs the reject |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             The case is not currently dispatched

-3                                             Cannot find the specified user

-4                                             The case is currently closed - cannot dispatch

-5                                             Cannot find the new specified WIPBIN, or it is not a WIPBIN for the specified user

-6                                             Cannot find REJECT activity string

**Examples**

 Reject case number 'C154' to the default WIPBin. The reject has no notes, is performed by the current user and is rejected at the current time. Generate a time bomb.

**JavaScript: **

var ret_int = fccs.reject_case("C154", "", "", "", "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.reject_case("C154", "", "", "", "", True)

 Reject case number '2' at 10PM on November 23rd of 1997 to WIPBin 'East'. Reject should be logged as performed by dave, with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript: **

var ret_int = fccs.reject_case("2", "11/23/97 22:00:00", "East",

                           "Some notes", "dave", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.reject_case("2", "11/23/97 22:00:00", "East", _
                           "Some notes", "dave", False)