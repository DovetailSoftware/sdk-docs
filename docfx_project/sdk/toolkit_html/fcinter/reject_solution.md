reject_solution
---------------

```
Public Function reject_solution(ByVal solution_id As String, _
                                ByVal reject_date As String, _
                                ByVal wipbin As String, _
                                ByVal notes As String, _
                                ByVal user_name As String, _
                                ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified solution to be rejected from the queue. The date and user performing the reject can be specified, and the API allows the solution to be placed back in any WIPBin of the owner. This is an augmentation over base Clarify where it is always rejected back to the default WIPBin. Also, the API allows for time bombs (for business rules) to be created, or not.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| solution_id | Yes | The solution to reject |
| reject_date | No | When did the reject occur. If left blank, current time is used |
| wipbin | No | The owner's WIPBin in which to place the solution. If left blank, it is rejected to the default WIPBin |
| notes | No | Notes about the reject |
| user_name | No | Who performed the reject? If left blank, current user is used |
| gen_time_bombs | Yes | Should a time bomb record be created for business rule notification? |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No Errors |
| -1 | Cannot find the specified solution |
| -2 | The solution is not currently dispatched |
| -3 | Cannot find the specified user |
| -4 | The solution is currently closed - cannot dispatch |
| -5 | Cannot find the new specified WIPBIN, or it is not a WIPBIN for the specified user |
| -6 | Cannot find activity string REJECT with rank equal to 2600 |

#### Examples

Reject solution number '14' to WIPBin 'Hardware'.  The reject occurs on August 1, 1998, and is performed by Marty. Generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.reject_solution("14", "8/1/98", "Hardware", _
                                  "Some notes", "marty", true)
```

**JavaScript:**
```
var ret_int = fcinter.reject_solution("14", "8/1/98", "Hardware",
                                  "Some notes", "marty", true);
```

Reject solution number '2' to the default WIPBin. Do the reject now and with the current user. Do not generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.reject_solution("2", "", "", "", "", false)
```

**JavaScript:**
```
var ret_int = fcinter.reject_solution("2", "", "", "", "", false);
```