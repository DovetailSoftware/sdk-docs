_modify_eco_dtl_
------------------

```
Public Function modify_eco_dtl(ByVal eco_dtl_objid As Long, _
                         ByVal detail_type As String, _
                         ByVal required As Long, _
                         ByVal status As String, _
                         ByVal labor_type As String, _
                         ByVal elapsed_time As Long, _
                         ByVal location As String, _
                         ByVal description As String, _
                         ByVal eco_hdr_code As String, _
                         ByVal mod_level_objid As Long) As Integer
```

#### Description

This API modifies an existing ECO detail object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| eco_dtl_objid | Yes | The objid of the ECO item object to be modified. |
| detail_type | No | This is the type of detail, "Labor", "Material", or "" to ignore. |
| Required? | No | This indicates if the detail is required; 0 for no, 1 for yes, or -1 to ignore. |
| status | No | Use to change the status of the ECO Detail |
| labor_type | No | Use to change the labor type for a "Labor" detail. |
| elapsed_time | No | This will replace existing time (use -1 to ignore) if detail_type is "Labor". |
| location | No | Any non-zero length string will replace location for "Material" details. |
| description | No | Any non-zero length string will replace description. |
| eco_hdr_code | No | Use to reassign detail to another ECO header, or use "" to ignore. |
| mod_level_objid | No | The part in "Material" details can be changed, or use 0 to ignore. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Invalid Detail Type Specified |
| -2 | Invalid Value for Detail Required Field |
| -3 | Specified ECO Status is not in database |
| -4 | Specified Labor Type is not in database |
| -5 | Specified ECO Detail is not in database |
| -6 | Specified ECO Header is not in database |
| -7 | Specified Mod Level  is not in database |

#### Examples

Modify a "Labor" ECO detail to change the status to expired.

**JavaScript:**

var ret_int = fcdr.modify_eco_dtl(268435465,"",-1,"Expired","",-1, "",    

                                  "","", 0);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr. modify_eco_dtl(268435465,"",-1,"Expired","",-1, "",    

                                  "","", 0)