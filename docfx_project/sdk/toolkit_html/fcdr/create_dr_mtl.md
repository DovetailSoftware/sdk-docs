_create_dr_mtl_
-----------------

```
Public Function create_dr_mtl(ByVal demand_dtl_objid As Long, _
                         ByVal repair_code As String, _
                         ByVal failure_code As String, _
                         ByVal mod_level As Long, _
                         ByVal billable As Integer, _
                         ByVal bill_to As String, _
                         ByVal wrk_center As String, _
                         ByVal disposition As Integer, _
                         ByVal ref_designator As String, _
                         ByVal notes As String, _
                         ByVal transaction_id As String, _
                         ByVal perf_by As String, _
                         ByVal creation_time As String) As Integer
```

#### Description

This API allows usage of material to be logged against a depot repair part.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| demand_dtl_objid | Yes | Object ID of specified part request. |
| repair_code | No | Repair type for this usage of material. Will use default if not supplied. |
| failure_code | No | Failure code for the part being serviced. Will use default if not supplied. |
| mod_level | Yes | Part and revision of the material that was put in use. |
| billable | No | Indicates whether material usage is billable. |
| bill_to | No | Indicates who is billed for the material. Will use default if not supplied. |
| wrk_center | No | Indicates the location where material was used. |
| disposition | Yes | Indicates how the material relates to the depot repair part. |
| ref_designator | No | Describes a reference location or designation for the part. |
| notes | No | Description area for the material usage activity. |
| transaction_id | No | Indicates the id of the GL transaction associated with this material usage. |
| perf_by | No | Indicates the technician who performed the labor. Will default to the current Clarify user if not supplied. |
| creation_time | No | Indicates the time this action is logged. Will default to the current time if a different time is not supplied. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Invalid Disposition (must be 0, 1, or 2) |
| -2 | Cannot find the specified repair code |
| -3 | Cannot find the specified bill to material |
| -4 | Cannot find the specified work center |
| -5 | Specified User is not in database |
| -6 | Related Part Request Header record is not in database |
| -7 | Unable to find Standard Cost for part revision |
| ret_objid | Output - Returns the objid of the newly created material log record |

#### Examples

Apply usage of Part 268435465 against Part Repair 268435466. The job was done by user "db", billable to the customer. All other defaults are used.

**JavaScript:**
```
var demand_dtl_objid = 268435466;
var repair_code = "";
var failure_code = "";
var mod_level = 268435465;
var bill_to = "Customer";
var wrk_center = "";
var disposition = "";
var ref_designator = "";
var notes = "";
var transaction_id = "";
var creation_time = "";
var perf_by = "db";
var billable = 1;

var retval = FCDR.create_dr_mtl(demand_dtl_objid, repair_code, failure_code,
mod_level, billable, bill_to, wrk_center,
disposition, ref_designator, notes, transaction_id,
perf_by, creation_time);
```