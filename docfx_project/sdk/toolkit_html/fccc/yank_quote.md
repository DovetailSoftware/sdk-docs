yank_quote
----------

```
Public Function yank_quote(ByVal quote_id As String, _
        ByVal wipbin_name As String, ByVal yank_date As String, _
        ByVal user_name As String, ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified quote to be yanked from the current location to a new owner's WIPBin. The date/time of the yank, and the person yanking the quote are specified. The person who yanks the quote becomes the new owner. The WIPBin to place the quote in may also be specified. This is augmented function from base Clarify, where the quote is always placed in the default WIPBin. The API can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| quote_id | Yes | The quote to yank |
| wipbin_name | No | The WIPBin to place the quote in. If left blank, the default WIPBin for the user is used |
| yank_date | No | When was the quote yanked. If this parameter is left blank, the yank occurs at the current time |
| user_name | No | The user who yanked the quote. If left blank, the current user performs the yank. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified quote |
| -2 | The quote is already closed |
| -3 | Cannot find the specified user |
| -4 | Cannot find the specified WIPBIN |
| -5 | Cannot find the YANK activity string with rank = 4100 |

#### Examples

Yank quote number '154' by the current user at the current date/time. Place in the default WIPBin, generate a time bomb.

**JavaScript:**
```
var ret_int = fc_cc.yank_quote("154", "", "", "", True)
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fc_cc.yank_quote("154", "", "", "", True)
```

Yank quote number 'Q2' at 10PM on November 23rd of 2001 by user 'sam'. Place in sam's WIPBin 'Urgent'. Don't generate a time bomb.

**JavaScript:**
```
var ret_int = fc_cc.yank_quote("Q2", "Urgent", "11/23/2001 22:00:00", "sam", False)
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fc_cc.yank_quote("Q2", "Urgent", "11/23/2001 22:00:00", "sam", False)
```