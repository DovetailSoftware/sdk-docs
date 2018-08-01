fulfill_commitment
------------------

```
Public Function fulfill_commitment(ByVal log_objid As Long, _
                                   ByVal fulfill_date As String, _
                                   ByVal user_name As String, _
                                   ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API will fulfill a previously unfulfilled commitment. The commitment objid supplied must be for an open, unfulfilled commitment. The user who fulfills the commitment, as well as the fulfill time may be specified. The API can also generate a time bomb (for business rule notification). The objid for the commitment can either be retrieved from the log_*_commitment APIs in this toolkit (which return the objid of the commitment or from a Clear Basic query.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| log_objid | Yes | The objid of the log to be fulfilled |
| fulfill_date | No | When was the commitment fulfilled. If this parameter is left blank, commitment is fulfilled at the current time |
| user_name | No | The user who fulfilled the commitment. If left blank, the current user performs the fulfill |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified commit log |
| -2 | The fulfill date is before the log creation date |
| -3 | The commitment is already fulfilled |
| -4 | The specified commitment is not for case or subcase |
| -5 | The specified user is not found |
| -6 | The FULFILL activity string is not found |
| -7 | Cannot find Employee record for specified user |

#### Examples

Fulfill the commitment with the objid of 268435457.  The fulfill is is performed by the current user and is fulfilled at the current time. Generate a time bomb.

**JavaScript:**
```
var ret_int = fccs.fulfill_commitment(268435457, "", "", true);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.fulfill_commitment(268435457, "", "", True)
```

Fulfill a commitment with an objid of 268435500. The fulfill is perfomed by dave at 10PM on November 23rd of 1997. Don't generate a time bomb.

**JavaScript:**
```
var ret_int = fccs.fulfill_commitment(268435500,
                   "11/23/97 22:00:00", "dave", true);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.fulfill_commitment(268435500, _
               "11/23/97 22:00:00", "dave", True)
```