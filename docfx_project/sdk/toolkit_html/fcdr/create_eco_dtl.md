_create_eco_dtl_
------------------

Public Function create_eco_dtl(ByVal detail_type As String, _
                        ByVal required As Long, _
                        ByVal status As String, _
                        ByVal labor_type As String, _
                        ByVal elapsed_time As Long, _
                        ByVal location As String, _
                        ByVal description As String, _
                        ByVal eco_hdr_code As String, _
                        ByVal mod_level_objid As Long) As Integer

**Description**

This API add labor or material details to the specified ECO Header. The objid of the ECO detail created is returned in the object property _ret_objid_  (FCDR.ret_objid).

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| detail_type | Yes | Must be "Labor" or "Material" |
| Required? | Yes | Indicates if this detail is required (1), or not (0) |
| status | No | Indicates the effectivity of the ECO, defined by the Clarify list of "ECO Status" values. The list default is used if no parameter is supplied. |
| labor_type | No* | Indicates the type of labor being added, from the Clarify list of "Labor Type" values. The list default is used if no parameter is supplied. |
| elapsed_time | Yes* | Estimated amount of time required to perform the work in seconds. |
| location | No** | Indicates the location where the material belongs. |
| description | No | Text field for the description of the ECO detail. |
| eco_hdr_code | Yes | ECO Code of the ECO Header this detail will be attached to. |
| mod_level_objid | Yes** | Indicates the part and revision used to apply this ECO. |

```
* These parameters only apply to Labor detail items.
** These parameters only apply to Material detail items.
```

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Invalid Detail Type Specified

-2                                             Invalid Value for Detail Required Field

-3                                             Invalid Value for Elapsed Time

-4                                             Specified ECO Status is not in database

-5                                             Specified Labor Type is not in database

-6                                             Specified ECO Header is not in database

-7                                             Specified Mod Level  is not in database |
| ret_objid | Output | Returns the objid of the newly created ECO Detail

**Examples**

 Create a labor ECO detail attached to ECO "8". The estimated time is 10 minutes (600 seconds).

**JavaScript:**

var ret_int = fcdr.create_eco_dtl("Labor",0,"","",600,"","Apply

              Upgrade","8",0);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr.create_eco_dtl("Labor",0,"","",600,"","Apply

              Upgrade","8",0)