_delete_dr_labor_
-------------------

```
Public Function delete_dr_labor(ByVal time_log_objid As Long,
								ByVal creation_time As String) As Integer
```

#### Description

This API will delete labor applied to a depot repair part.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| time_log_objid | Yes | The objid of the time log object to be deleted. |
| creation_time | No | The time that the labor is being removed from the depot repair part. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Specified Time Log record is not in database |
| -2 | Related Onsite Log record is not in database |
| -3 | Related Demand Dtl record is not in database |

#### Examples

Delete Time Log 268435463.

**JavaScript:**
```
var retval = FCDR.delete_dr_labor(268435463, "");
```