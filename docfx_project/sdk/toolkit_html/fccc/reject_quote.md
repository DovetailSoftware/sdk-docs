reject_quote
------------

```
Public Function reject_quote(ByVal quote_id As String, _
                    ByVal reject_date As String, ByVal wipbin_name As String, _
                    ByVal note_str As String, ByVal user_name As String, _
                    ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified quote to be rejected from the queue it is in, and returned back to the owner. The quote must be in open condition and currently dispatched to a queue. The API allows setting of the reject date, some notes about the reject, and the user who rejected the quote. The API also allows you to set the WIPBin that the quote is placed back in. This is additional functionality that base Clarify does not provide. The API can also generate a time bomb (for business rule notification). Note: This is not the same as the "reject_contract" API, which causes the selected contract to be rejected as a valid contract.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| quote_id | Yes | The quote to reject-forward |
| reject_date | No | When was the quote rejected. If this parameter is left blank, the quote is rejected at the current time |
| wipbin_name | No | The WIPBin to place the quote in. If left blank, the default WIPBin is used |
| note_str | No | Optional notes about the reject |
| user_name | No | The user who rejected the quote. If left blank, the current user performs the reject. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified quote |
| -2 | The quote is not currently dispatched |
| -3 | Cannot find the specified user |
| -4 | The quote is currently closed - cannot dispatch |
| -5 | Cannot find the new specified WIPBIN, or it is not a WIPBIN for the specified user |
| -6 | Cannot find REJECT activity string with rank = 2600 |

#### Examples

Reject quote number '154' to the default WIPBin. The reject has no notes, is performed by the current user and is rejected at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.reject_quote("154", "", "", "", "", True)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.reject_quote("154", "", "", "", "", True)

 Reject quote number 'Q2' at 10PM on November 23rd of 2001 to WIPBin 'East'. Reject should be logged as performed by user 'sam', with notes of 'Some notes'. Don't generate a time bomb.

**JavaScript:**

var ret_int = fc_cc.reject_quote("Q2", "11/23/2001 22:00:00", "East", _
                                "Some notes", "Sam", False)

**Visual Basic:**

Dim ret_int As Integer

ret_int = fc_cc.reject_quote("Q2", "11/23/2001 22:00:00", "East", _
                                "Some notes", "Sam", False)