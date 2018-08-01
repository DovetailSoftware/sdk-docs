create_update_part
--------------------

create_update_part_list
-------------------------

```
Public Function create_update_part(ByVal part_num As String, _
                                   ByVal domain As String, _
                                   ByVal notes As String, ByVal desc As String, _
                                   ByVal model_num As String, _
                                   ByVal warr_days As Long, _
                                   ByVal start_on_ship As Boolean, _
                                   ByVal unit_measure As String, _
                                   ByVal family As String, _
                                   ByVal the_line As String, _
                                   ByVal repair_type As String, _
                                   ByVal part_type As String, _
                                   ByVal weight As String, _
                                   ByVal dimension As String, _
                                   ByVal class As String, _
                                   ByVal int_fld1 As String, _
                                   ByVal int_val1 As Long, _
                                   ByVal int_fld2 As String, _
                                   ByVal int_val2 As Long, _
                                   ByVal str_fld1 As String, _
                                   ByVal str_val1 As String, _
                                   ByVal str_fld2 As String, _
                                   ByVal str_val2 As String, _
                                   ByVal date_fld1 As String, _
                                   ByVal date_val1 As String) As Integer
```

```
Public Function create_update_part_list(ByVal part_num As String, _
                                        ByVal domain As String, _
                                        ByVal notes As String, _
                                        ByVal desc As String, _
                                        ByVal model_num As String, _
                                        ByVal warr_days As Long, _
                                        ByVal start_on_ship As Boolean, _
                                        ByVal unit_measure As String, _
                                        ByVal family As String, _
                                        ByVal the_line As String, _
                                        ByVal repair_type As String, _
                                        ByVal part_type As String, _
                                        ByVal weight As String, _
                                        ByVal dimension As String, _
                                        ByVal class As String, _
                                        Optional fld_list As Variant, _
                                        Optional type_list As Variant,
										Optional val_list As Variant), _
                                        As Integer
```

#### Description

These APIs either create or update a part number in the database. The part number and domain must be specified. Also, the start on ship (or install) flag and warr_days must be specified. All of the other arguments are optional. For inserts, if the values are not specified (for code lists such as family and line), the default list values are used. For updates, leaving an argument blank causes the old value to be retained. If you wish (on an update) to blank a field's value, use the alternate fields (str_fld1 etc.) to assign them.

**Note**: Just calling on this API will **NOT** cause the part to be visible in Clarify. To see the part number, there must be at least one part revision. Use the create_update_mod_level  to add a part revision.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| part_num | Yes | Part number to insert/update |
| domain | Yes | The domain for the part to insert/update |
| notes | No | Notes about the part |
| desc | No | Description of the part |
| model_num | No | Model number of the part |
| warr_days | Yes | Number of warranty days for the part |
| start_on_ship | Yes | Should the warranty start on shipment (=0), or on install (=1) |
| unit_measure | No | What is the unit of measure for the part? |
| family | No | Level 1 of the FAMILY/LINE code list. If blank (on insert), the default value is used. If blank (on update) no change is made |
| the_line | No | Level 2 of the FAMILY/LINE code list. If blank (on insert), the default value is used. If blank (on update) no change is made |
| repair_type | No | String for type. One of: "Repairable" or "Expendable". If blank (on update), no change is made |
| part_type | No | Level 1 of the PART TYPE code list. If blank (on insert), the default value is used. If blank (on update), no change is made |
| weight | No | Unit weight of the part |
| dimension | No | Dimensions of the part |
| class | No | Part class for the part. Only used by DE engine. If blank (on insert), default part class is used. If blank (on update), no change is made |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Warranty days is negative (for inserts only) |
| -2 | Invalid repair type |
| -3 | Could not find the specified part domain |
| -4 | Invalid part type specified |
| -5 | Invalid family/line specified |
| -6 | Invalid part class specified |
| ret_objid | Output - Returns the objid of the part |

#### Examples

Add a new part 'Attachments Anywhere' in domain 'Product' to the system. Set the family and line to 'Software', 'Workflow Series', and some other values, including  30 warranty days that start from shipment.

**Visual Basic:**
```
Dim ret_int As Integer
Dim part_objid As Long

ret_int = fcinter.create_update_part("Attachments Anywhere", _
                                     "Product", _
                                     "Some notes", _
                                     "A good product description",_
                                     "Model 42", _
                                     30, true, "Each", "Software", _
                                     "Workflow Series", _
                                     "Expendable", "Software", "2.3", _
                                     "2x2x3", "", "", 0, _
                                     "", 0, "", "", "", "","","")

 If ret_int = 0 Then
   part_objid = fcinter.ret_objid
 End If  
```

**JavaScript:**
```
var ret_int = fcinter.create_update_part("Attachments Anywhere",
   "Product", "Some notes",
   "A good product description", "Model 42",
   30, true, "Each", "Software",
   "Workflow Series",  
   "Expendable", "Software", "2.3",
   "2x2x3", "", "", 0,
   "", 0, "", "", "", "","","");

 if (ret_int == 0){ var part_objid = fcinter.ret_objid; }
 ```