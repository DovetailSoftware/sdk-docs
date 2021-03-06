yank_cr
-------

```
Public Function yank_cr(ByVal cr_id As String, _
            			      ByVal wipbin As String, _
                        ByVal yank_date As String, _
            			      ByVal user_name As String, _
                        ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified change request to be yanked from the current location to a new owner's WIPBin. The date/time of the yank and the person yanking the change request can be specified. The person who yanks the change request becomes the new owner. The WIPBin to place the change request in may also be specified. This is augmented function from base Clarify, where the change request is always placed in the default WIPBin. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The change request to yank |
| wipbin | No | The WIPBin to place the change request in. If left blank, the default WIPBin for the user is used |
| yank_date | No | When was the change request yanked. If this parameter is left blank, the yank occurs at the current time |
| user_name | No | The user who yanked the change request. If left blank, the current user performs the yank |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified change request |
| -2 | The change request is currently closed |
| -3 | Cannot find the specified user |
| -4 | Cannot find the specified WIPBin |
| -5 | Cannot find gbst_elm rank 4100 for string YANKED |

#### Examples

Yank change request number '10' by the current user at the current date/time. Place in the default WIPBin and generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.yank_cr("10", "", "", "", True)
```

**JavaScript:**
```
var ret_int = fccq.yank_cr("10", "", "", "", true);
```

Yank change request number '2' at 10PM on November 23rd of 1997 by dave. Place in WIPBin 'Urgent', and don't generate a time bomb.

**Visual Basic:**
```
Dim ret_int As Integer
ret_int = fccq.yank_cr("2", "Urgent", "11/23/97 22:00:00", "dave", False)
```

**JavaScript:**
```
var ret_int = fccq.yank_cr("2", "Urgent", "11/23/97 22:00:00", "dave", false);
```
