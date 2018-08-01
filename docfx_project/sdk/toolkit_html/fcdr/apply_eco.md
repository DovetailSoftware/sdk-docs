_apply_eco_
-----------

```
Public Function apply_eco(ByVal demand_dtl_objid As Long, _
              ByVal eco_code As String,
			  ByVal perf_by As String,
			  ByVal creation_time As String) As Integer
```

#### Description

These APIs allow an ECO to be applied against a Depot Repair.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| demand_dtl_objid | Yes | Object ID of specified part request. |
| eco_code | Yes | Header Code of ECO to apply. |
| perf_by | No | Indicates the technician who performed the action. Will default to the current user if not supplied. |
| creation_time | No | Indicates the time this action is logged. Will default to the current time if a different time is not supplied. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Specified demand_dtl object not in database |
| -2 | Unable to find related mod_level |
| -3 | Specified eco_hdr object not in database |
| -4 | Specified activity date is outside of date ranges of eco |
| -5 | Related apply_to mod_level object not in database |
| -6 | Part to be replaced does not match eco apply_to part |
| -7 | Related result_in mod_level object not in database |
| -8 | Specified user not in database |

#### Examples

Apply ECO 5 against Part Repair 268435470.

**JavaScript:**

var ret_int = fcdr.apply_eco(268435470,"5","","");

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr.apply_eco(268435470,"5","","")