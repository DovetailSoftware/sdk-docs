log_contract_note
-------------------

log_contract_note_list
------------------------

```
Public Function log_contract_note(contract_id As String, _
                                 action_type As String, note_str As String, _
                                 int_use As String, log_date As String, _
                                 user_name As String, _
                                 gen_time_bombs As Boolean, _
                                 int_fld1 As String, int_val1 As Long, _
                                 int_fld2 As String, int_val2 As Long, _
                                 str_fld1 As String, str_val1 As String, _
                                 str_fld2 As String, str_val2 As String, _
                                 date_fld1 As String, date_val1 As String _
                                 ) As Integer
```

```
Public Function log_contract_note_list(contract_id As String, _
                                      action_type As String, _
                                      note_str As String, _
                                      int_use As String, _
                                      log_date As String, _
                                      user_name As String, _
                                      gen_time_bombs As Boolean, _
                                      Optional fld_list As Variant, _
                                      Optional type_list As Variant, _
                                      Optional val_list As Variant) As Integer
```

#### Description

This API causes a note log to be create and added to the specified contract.  It does it in the name of the user given and allows the setting of user.   It allows the setting of optional fields on the notes_log record with the optional list parameters.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contract_id | Yes | The contract to add the note to |
| action_type | No | The note log action type taken from the "Note Log Action Type" list.  If the field is not specified, the default from the list is used. |
| note_str | Yes | The note to attach to the contract |
| int_use | Yes | Whether note is internal only (=1) or general viewing (=0) |
| log_date | No | Date/time of the note (default is the current time) |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Specified contract not found |
| -2 | Specified user not found |
| -3 | Cannot find the activity string with rank = 1700 ("Notes") |
| -4 | Cannot find the specified log action type |
| -5 | Cannot find employee record for the user |
| ret_objid | objid of the created notes log record |

#### Examples

Move quote number '154' to the default WIPBin for the current owner.

**JavaScript:**
```
Var ret_int = log_contract_note("Ace contract","","They want to add stuff",
                      1,"","",true,"",0,"",0,"","","","","","")  
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = log_contract_note("Ace contract","","They want to add stuff",
                      1,"","",true,"",0,"",0,"","","","","","")
```