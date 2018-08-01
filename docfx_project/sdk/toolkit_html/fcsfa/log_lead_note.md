log_lead_note
---------------

```
Public Function log_lead_note(ByVal lead_objid As Long, _
                              ByVal the_text As String, _
                              ByVal iuo As String, _
                              ByVal log_date As String, _
                              ByVal user_name As String, _
                              ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API allows you to log a note for a lead. You must specify the objid of the lead (since no other information on the lead is unique), and the description (note text). You may also specify the internal use only text field. You may specify who logged the note, and when

The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| lead_objid | Yes | The unique object ID of the lead |
| the_text | No | Note text |
| iuo | No | Internal use only text for the note |
| log_date | No | When was the note logged? If blank, current date/time used |
| user_name | No | Who logged the note? If blank, current user is used |
| gen_time_bombs | Yes | Should a time bomb be created? Values are "True" or "False". |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified lead |
| -2 | The specified user is not found |
| -3 | The NOTES activity string is not found |

#### Examples

Sam logged a note on December 12, 2000 (at 11AM) for a lead. The text is "Hello there", with some internal use only text as well. Generate time bombs.

**JavaScript:**
```
var ret_int = fcsfa.log_lead_note(268435458, "Hello there",
                    "This customer is a pain", "12/12/2000 11:00:00",
                    "sam", true);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcsfa.log_lead_note(268435458, "Hello there", _
                    "This customer is a pain", "12/12/2000 11:00:00", _
                    "sam", True)
```

Log notes for the same lead. Only log text, and do it now for the current user. Don't generate a time bomb.

**JavaScript:**
```
var ret_int = fcsfa.log_lead_note(268435458, "More text", "", "", "", false);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcsfa.log_lead_note(268435458, "More text", "", "", "", False)
```