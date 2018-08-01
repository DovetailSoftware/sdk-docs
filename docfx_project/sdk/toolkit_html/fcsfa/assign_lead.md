assign_lead
-----------

```
Public Function assign_lead(ByVal lead_objid As Long, _
                            ByVal new_owner As String, _
                            ByVal assign_date As String, _
                            ByVal gen_time_bombs As Boolean) As Integer
```

#### Description

This API causes the specified lead to be assigned to a new user. The objid of the lead must be specified (since there are no other unique keys for leads), and the new user name to assign to must also be supplied. Optionally, the assign date/time may be specified.

**Note:** Unlike objects such as cases, quotes, and part requests, leads are not queueable objects in Clarify. By "assigning" the lead, you simply cause it to be seen by the new owner when they view leads in ClearSales. They will not show up in a WIPBin or queue.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| lead_objid | Yes | Objid (unique identifier) of the lead |
| new_owner | Yes | Login name of new owner of the lead |
| assign_date | No | When did the assign take place? If blank, the current date/time is used |
| gen_time_bombs | Yes | Should a time bomb be created? Values are "True" or "False". |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified lead |
| -2 | The specified user cannot be found |
| -3 | The LEAD activity string is not found |

#### Examples

Assign action item number '10' to user 'marty'. The assign is performed by the current user, is placed in the default WIPBin and is assigned at the current time. Generate a time bomb.

**JavaScript:**
```
var ret_int = fcsfa.assign_action_item("10", "marty", "", "", "", true);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcsfa.assign_action item("10", "marty", "", "", "", True)
```

Assign lead 268435457 to user "gary" at the current date/time.

**JavaScript:**
```
var ret_int = fcsfa.assign_lead(268435457, "gary", "", true);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcsfa.assign_lead(268435457, "gary", "", True)
```

Assign lead 268435457 to user "cheryl" on 1/1/01 at 8AM.. Do not generate time bombs.

**JavaScript:**
```
var ret_int = fcsfa.assign_lead(268435457, "cheryl", "1/1/01 08:00:00", false);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcsfa.assign_lead(268435457, "cheryl", "1/1/01 08:00:00", False)
```