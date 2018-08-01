create_eco_hdr
----------------

```
Public Function create_eco_hdr(ByVal eco_title As String, _
             ByVal eco_type As String, _
             ByVal create_date As String, _
             ByVal eff_type As String, _
             ByVal start_date As String, _
             ByVal end_date As String, _
             ByVal status As String, _
             ByVal description As String) As Integer
```

#### Description

This API create a new ECO Header object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| eco_title | No | The title of the new ECO header. |
| eco_type | No | The type of ECO, defined by the Clarify list of "ECO Type" values. The list default is used if no parameter is supplied. |
| create_date | No | The date the ECO header was created. Will default to the current date. |
| eff_type | No | The effect type of ECO, defined by the Clarify list of "ECO Effect Type" values. The list default is used if no parameter is supplied. |
| start_date | Yes | The date that this ECO header goes into effect. |
| end_date | Yes | The date that this ECO header becomes obsolete. |
| status | No | The type of ECO, defined by the Clarify list of "ECO Status" values. The list default is used if no parameter is supplied. |
| description | No | The text description of the ECO header. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Invalid Start Date Specified |
| -2 | Invalid End Date Specified |
| -3 | Specified Start Date After Specified End Date |
| -4 | Cannot generate a new ECO ID number |
| -5 | Specified ECO Type is not in database |
| -6 | Specified ECO Effect Type is not in database |
| -7 | Specified ECO Status is not in database |
| ret_id_num | Output - Returns the ECO Header Code of the newly created ECO |
| ret_objid | Output - Returns the objid of the newly created ECO |

#### Examples

*  Create a new ECO header titled "5001", type "Service Update", status "In Effect", starting "1/1/1999",  and ending "1/31/1999".

**JavaScript:**
```
var ret_int = fcdr. create_eco_hdr("5001","Service
                    Update","","","01/01/99 00:00",
                    "01/31/99 23:59","In Effect","")
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcdr. create_eco_hdr("5001","Service
                Update","","","01/01/99 00:00",
                "01/31/99 23:59","In Effect","")
```