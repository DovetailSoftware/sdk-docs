create_update_mod_level
-------------------------

```
Public Function create_update_mod_level(ByVal part_num As String, _
                                        ByVal domain As String, _
                                        ByVal mod_level As String, _
                                        ByVal replaces_part As String, _
                                        ByVal replaces_dom As String, _
                                        ByVal replaces_rev As String, _
                                        ByVal replaces_date As String, _
                                        ByVal status As String, _
                                        ByVal change_ml As Boolean, _
                                        ByVal new_ml As String) As Integer
```

#### Description

This API creates or update part mod levels (revisions). You must supply the part number and domain (to identify the part), and the mod_level. If the mod_level record already exists, it's an update. If it doesn't, it's a create. You may also (optionally) specify the part number/domain/revision that this revision replaces, and the date that it replaces the previous revision.

You may also specify the status of the revision. If you do not specify a status (for create), the status of "Active" is assumed. Also, you may use the change_ml and new_ml arguments to change the mod_level of an existing mod_level record.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| part_num | Yes | Part number of the part |
| part_dom | Yes | Domain of the part |
| mod_level | Yes | Revision to create |
| replaces_part | No | Part number of part/rev that this revision replaces |
| replaces_dom | No | Domain of part/rev that this revision replaces |
| replaces_rev | No | Revision of part/rev that this revision replaces |
| replaces_date | No | What date/time does this part/rev replace the previous one? |
| status | No | The status of the revision. For creates, if blank, the status of "Active" is used. For updates,  if it is blank, no change is made to the status. Must be a valid status otherwise (Active, Inactive, Obsolete) |
| change_ml | Yes | For updates only (ignored for creates). Should the mod_level be updated? Should be True or False |
| new_ml | No | For updates only. If change_ml = True, this is the new mod_level for the revision record |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified part number |
| -2 | An invalid status was supplied |
| -3 | Cannot find the specified replaces part and revision |
| -4 | The new mod_level (updates only) supplied already exists for a revision of this part. |
| ret_objid | Output - Returns the objid of the mod level |

#### Examples

Create revision '2.4' for product 'Zipcode Reverse Directory'. It does not replace another revision. Assume it is active.

**Visual Basic:**
```
Dim ret_int As Integer
Dim mod_level As Long

ret_int = fcinter.create_update_mod_level("Zipcode Reverse Directory", _
                                          "Product", "2.4", "",_
                                          "", "", _
                                          "", "", false, "")

 If ret_int = 0 Then
   mod_level_objid = fcinter.ret_objid
 End If  
```

**JavaScript:**
```
var ret_int = fcinter.create_update_mod_level("Zipcode Reverse Directory",
                                          "Product", "2.4", "",
                                          "", "", "", "", false, "");

 if (ret_int == 0){ var mod_level_objid = fcinter.ret_objid; }
```

Modify revision '2.4' for product 'Zipcode Reverse Directory'. It replaces revision '2.3' of the same package on January 23rd 1998\. Leave everything else alone.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcinter.create_update_mod_level("Zipcode Reverse Directory", _
                                          "Product", "2.4", _
                                          "Zipcode Reverse Directory", _
                                          "Product", "2.3",_
                                          "1/23/98 8:00:00", _
                                          "", false, "")
```

**JavaScript:**
```
var ret_int = fcinter.create_update_mod_level("Zipcode Reverse Directory",
  "Product", "2.4", 
  "Zipcode Reverse Directory", "Product", "2.3",
  "1/23/98 8:00:00", "", false, "");
```