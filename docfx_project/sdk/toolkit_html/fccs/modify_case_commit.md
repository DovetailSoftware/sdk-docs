modify_case_commit
--------------------

modify_case_commit_list
-------------------------

modify_subcase_commit
-----------------------

modify_subcase_commit_list
----------------------------

```
Public Function modify_case_commit( ByVal id_num As String, _
                ByVal the_title As String, _
				ByVal action_type As String, _                                 
				ByVal commit_date As String, _
				ByVal commit_objid As Long, _                                  
				ByVal prior_warn As Long, _
				ByVal made_to_str As String, _        
				ByVal cont_first As String,
				ByVal cont_last As String, _                                  
				ByVal cont_phone As String,
				ByVal note_str As String, _                                  
				ByVal mod_date As String, _
				ByVal user_name As String, _                                   
				ByVal gen_time_bombs As Boolean, _
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
Public Function modify_case_commit_list(  ByVal id_num As String, _
		        ByVal the_title As String, _
				ByVal action_type As String, _                                 
				ByVal commit_date As String, _
				ByVal commit_objid As Long, _                                 
				ByVal prior_warn As Long, _
				ByVal made_to_str As String, _                                 
				ByVal cont_first As String,
				ByVal cont_last As String, _                                  
				ByVal cont_phone As String,
				ByVal note_str As String, _                                   
				ByVal mod_date As String,
				ByVal user_name As String, _                                  
				ByVal gen_time_bombs As Boolean, _   
				Optional fld_list As Variant,
				Optional type_list As Variant, _
				Optional val_list As Variant) As Integer
```

```
Public Function modify_subcase_commit(ByVal id_num As String, _
                ByVal the_title As String, _
				ByVal action_type As String, _                                 
				ByVal commit_date As String, _
				ByVal commit_objid As Long, _                                  
				ByVal prior_warn As Long, _
				ByVal made_to_str As String, _                                 
				ByVal cont_first As String, _
				ByVal cont_last As String, _                                  
				ByVal cont_phone As String, _
				ByVal note_str As String, _                                  
				ByVal mod_date As String, _
				ByVal user_name As String, _                                  
				ByVal gen_time_bombs As Boolean, _                            
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
Public Function modify_subcase_commit_list(ByVal id_num As String, _
                ByVal the_title As String, _
				ByVal action_type As String, _                                 
				ByVal commit_date As String, _
				ByVal commit_objid As Long, _                                  
				ByVal prior_warn As Long, _
				ByVal made_to_str As String, _                                 
				ByVal cont_first As String, _
				ByVal cont_last As String, _                                  
				ByVal cont_phone As String, _
				ByVal note_str As String, _                                  
				ByVal mod_date As String, _
				ByVal user_name As String, _                                   
				ByVal gen_time_bombs As Boolean, _   
				Optional fld_list As Variant, _
				Optional type_list As Variant, _
				Optional val_list As Variant) As Integer
```

These APIs are used to modify a commitment against a case or subcase. The APIs allow for the assigning of a title and action type. The date the commitment is logged can be set, as well as the commitment date, and prior warning. A flag can be set so that the commitment can be made to or by a contact, and the contact can be set. The user who logs the commitment can be set, and additional fields can also be set. Finally, a time bomb (for the commitment) can be generated.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| id_num | Yes | The ID number of the case or subcase to modify a commitment for |
| the_title | No | The title of the commitment |
| action_type | No | The commitment log action type code value |
| commit_date | No | When the commitment is due. If left blank, set to the log date |
| commit_objid | Yes | The objid of the commitment to be modified |
| prior_warn | No | How long to warn the owner before the commitment expires. This is recorded in seconds (1 hour = 3600 seconds). If set to 0, no prior warning is given |
| made_to | No | Is the commitment to the contact (True), or by the contact (False) |
| cont_first | No | First name of the contact |
| cont_last | No | Last name of the contact |
| cont_phone | No | Phone number of the contact |
| note_str | No | Additional text notes for the log |
| mod_date | No | The date the commitment was modified. If left blank, the current date is used. |
| user_name | No | The user who modified the commitment. If left blank, the current user ise used. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | No | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | No | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | No | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | No title specified |
| -2 | Must specify phone number of new contact |
| -2 | Must specify last name of new contact |
| -2 | Must specify first name of new contact |
| -3 | The commitment date is not a valid date |
| -4 | Prior warning is negative (warning after the commitment expires) |
| -5 | The commitment date is before the modification date |
| -6 | Could not find gbst_elm string for Modify Commitment |
| -7 | Could not find the specified log action type |
| -8 | Cannot find the specified case or subcase |
| -9 | Specified user is not found |
| -10 | Cannot find the employee record for the specified user |
| -11 | Specified commitment with given objid is not found |
| -12 | Could not find the specified contact |
| -13 | Could not find the com_tmplte for WARNING |
| -14 | Could not find the com_tmplte for COMMITMENT |

#### Examples

Modify a commitment with objid 268435459 for case number 'C154'. Set a title and use the default action code, log date, and user. Make the commitment to "Bill Clinton", and make the commitment expire on the default (log) date. Make no prior warning, have no notes, and set no additional fields. Generate a time bomb, and the commitement emails.

**JavaScript:**
```
var ret_int = fccs.modify_case_commit("C154", "A title", "",
	"", 268435459, 0, "to","Bill", "Clinton", "555-555-1234",
	"", "", "",true,"", 0, "", 0, "", "", "", "", "", "");
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.modify_case_commit("C154", "A title", "", _
	"", 268435459, 0, "to","Bill", "Clinton", "555-555-1234", _
	"", "", "",true,"", 0, "", 0, "", "", "", "", "", "")
```