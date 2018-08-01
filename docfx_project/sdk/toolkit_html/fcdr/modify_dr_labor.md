**modify_dr_labor**
---

```
Public Function modify_dr_labor(ByVal time_log_objid As Long, _
                         ByVal labor_type As String, _
                         ByVal start_time As String, _
                         ByVal duration As Long, _
                         ByVal billable As Integer, _
                         ByVal bill_to As String, _
                         ByVal wrk_center As String, _
                         ByVal tl_rate As Double, _
                         ByVal perf_by As String, _
                         ByVal creation_time As String) As Integer
```

#### Description

This API allows modification of labor that is logged against a depot repair part.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| time_log_objid | Yes | Object ID of specified time log. |
| labor_type | No | Labor type for this Depot Repair change. |
| start_time | No | Time and date at which labor began. |
| duration | No | Length of time required to do the work, in seconds. |
| billable | No | Indicates whether labor is billable. |
| bill_to | No | Indicates who is billed for the labor. |
| wrk_center | No | Indicates where labor was perfromed. |
| tl_rate | No | This is the labor rate for the performing employee. |
| perf_by | No | Indicates the technician who performed the labor. |
| creation_time | No | Indicates the time this action is logged. Will default to the current time if a different time is not supplied. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Specified Duration in seconds is not more than zero |
| -2 | Specified Labor Type is not in database |
| -3 | Specified Bill To Labor is not in database |
| -4 | Specified Work Center is not in database |
| -5 | Specified Time Log record is not in database |
| -6 | Related Onsite Log record is not in database |
| -7 | Related Demand Dtl record is not in database |
| -8 | Specified User is not in database |

#### Examples

Change labor applied in time_log 268435465. The job was done by user "db" in the Lab, billable to the customer. No other changes are being made at this time.

**JavaScript:**
```
var time_log_objid = 268435465;
var labor_type = "";
var creation_time = "";
var perf_by = "db";
var billable = -1;
var start_time = "";
var duration = 0;
var bill_to = "Customer";
var wrk_center = "Lab";
var tl_rate = 0;

var retval = FCDR.modify_dr_labor(time_log_objid, labor_type, start_time,
	duration,billable, bill_to, wrk_center, tl_rate,
	perf_by, creation_time);
```