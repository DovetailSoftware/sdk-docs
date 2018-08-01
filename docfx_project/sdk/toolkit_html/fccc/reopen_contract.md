reopen_contract
---------------

```
Public Function reopen_contract(ByVal contract_id As String, _
                ByVal wipbin_name As String, ByVal status_str As String, _
                ByVal reopen_date As String, ByVal user_name As String, _
                ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified contract to be reopened. This is augmented functionality from base Clarify, as a contract cannot be re-opened via the Clarify GUI. The date/time of the reopen, the person performing the reopen, the WIPBIN to place the contract in, and the new status of the contract can be specified. The person who reopens the contract becomes the new owner. The WIPBin to place the contract in may also be specified. If it is not, the contract is placed in the user's default WIPBIN. If the status is not specified, the case is placed in the default status for the Active Contract condition. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contract_id | Yes | The contract to reopen |
| wipbin_name | No | The WIPBin to place the contract in. If left blank, the  default WIPBin for the user is used |
| status_str | No | The new status for the contract. If no status is specified, the default status for Active Contract Condition is used |
| reopen_date | No | When was the contract reopened. If this parameter is left blank, the reopen occurs at the current time |
| user_name | No | The user who reopened the contract. If left blank, the current user performs the reopen. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified contract |
| -2 | The contract is not closed |
| -3 | Cannot find the specified user |
| -4 | Cannot find the specified WIPBIN |
| -5 | Cannot find the REOPEN activity string with rank = 2400 |
| -6 | Cannot find the specified status |
| -7 | Employee record not found for specified user |

#### Examples

Reopen contract number 'C154' by the current user at the current date/time. Place in the default WIPBin with the default status, and generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.reopen_contract("C154", "", "", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.reopen_contract("C154", "", "", "", "", True)

 Reopen contract number '2' at 10PM on November 23rd of 2001 by user 'sam'. Place in sam's WIPBin 'Urgent', with status 'User Error'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.reopen_contract("2", "Urgent", "User Error", _
                               "11/23/2001 22:00:00", "sam", False)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.reopen_contract("2", "Urgent", "User Error", _
                               "11/23/2001 22:00:00", "sam", False)