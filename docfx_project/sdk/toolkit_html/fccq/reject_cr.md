reject_cr
---------

```
Public Function reject_cr(ByVal cr_id As String, _
  						          ByVal reject_date As String, _
                        ByVal wipbin As String, _
						            ByVal notes As String, _
                        ByVal user_name As String, _
                        ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified change request to be rejected from the queue it is in, and returned back to the owner. The change request must be currently dispatched to a queue. The API allows for the setting of the reject date, some notes about the reject, and the user who rejected the change request. The API also allows you to set the WIPBin that the change request is placed back in. This is additional functionality that base Clarify does not provide. The API can also generate a time bomb (for business rule notifications).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The change request to reject-forward |
| reject_date | No | When was the change request rejected. If this parameter is left blank, the CR is rejected at the current time |
| wipbin | No | The WIPBin to place the change request in. If left blank, the default WIPBin is used |
| notes | No | Notes about the reject |
| user_name | No | The user who rejected the change request. If left blank, the current user performs the reject |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified change request |
| -2 | The change request is not currently dispatched |
| -3 | Cannot find the specified user |
| -4 | The change request is currently closed - cannot dispatch |
| -5 | Cannot find the new specified WIPBin, or it is not a WIPBin for the specified user |
| -6 | Cannot find gbst_elm rank 2600 for string RETURN |

#### Examples

Reject change request number '10' to the default WIPBin. The reject has no notes, is performed by the current user and is rejected at the current time. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.reject_cr("10", "", "", "", "", True)
```

**JavaScript:**
```
var ret_int = fccq.reject_cr("10", "", "", "", "", true);
```

Reject change request number '2' at 10PM on November 23rd of 1997 to WIPBin 'East'. Reject should be logged as performed by steven, with notes of 'Some notes'. Don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.reject_cr("2", "11/23/97 22:00:00", "East", _
                         "Some notes", "steven", False)
```

**JavaScript:**
```
var ret_int = fccq.reject_cr("2", "11/23/97 22:00:00", "East",
  "Some notes", "steven", false);
```
