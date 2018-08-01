create_update_schedule
------------------------

create_update_schedule_list
-----------------------------

```
Public Function create_update_schedule(ByVal contract_id As String, _
                ByVal is_create As Boolean, ByVal sched_id As String, _
                ByVal bill_site As String, ByVal bill_attn As String, _
                ByVal ship_site As String, ByVal price_prog As String, _
                ByVal bill_freq As String, ByVal bill_option As String, _
                ByVal period_start_dt As String, ByVal first_bill_dt As String, _
                ByVal chg_start_dt As String, ByVal chg_end_dt As String, _
                ByVal int_fld1 As String, ByVal int_val1 As Long, _
                ByVal int_fld2 As String, ByVal int_val2 As Long, _
                ByVal str_fld1 As String, ByVal str_val1 As String, _
                ByVal str_fld2 As String, ByVal str_val2 As String, _
                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer
```

```
Public Function create_update_schedule_list(ByVal contract_id As String, _
                ByVal is_create As Boolean, ByVal sched_id As String, _
                ByVal bill_site As String, ByVal bill_attn As String, _
                ByVal ship_site As String, ByVal price_prog As String, _
                ByVal bill_freq As String, ByVal bill_option As String, _
                ByVal period_start_dt As String, ByVal first_bill_dt As String, _
                ByVal chg_start_dt As String, ByVal chg_end_dt As String, _
                Optional fld_list As Variant, Optional type_list As Variant, _
                Optional val_list As Variant) As Integer
```

#### Description

These APIs are used to create or update a contract schedule. The contract ID must be specified, and the ID of the schedule is also specified. If this is an update, the Boolean is set to False, otherwise it is set to True. You may specify the bill-to or ship-to site, the price program, and the code list values. In addition, you may specify a variety of dates.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| contract_id | Yes | ID number of the contract |
| is_create | Yes | Is this a new schedule (True) or an update (False) |
| sched_id | Yes | The ID of the schedule to create, or of the one to update |
| bill_site | No | The ID number of the site to associate as the bill-to site. If this is set to the empty string ("") or "IGNORE", no change is made in the site |
| bill_attn | No | Attention person at bill-to site. If this field is set to "CLEAR", the field is set to the empty string |
| ship_site | No | The ID number of the site to associate as the ship-to site. If this is set to the empty string ("") or "IGNORE", no change is made in the site |
| price_prog | No | The price program for the schedule. If this field is left blank (for creates), the default program is used. If it is left blank (updates), the program is not changed |
| bill_freq | No | The billing frequency. If blank (creates), the default is used. If blank (updates), no change is made |
| bill_option | No | The billing option. If blank (creates), the default is used. If blank (updates), no change is made |
| period_start_dt | No | The start date of the billing period. If blank (creates), the current date/time is used. If blank (updates), the date is not changed |
| first_bill_dt | No | The first billing date.  If blank (creates), the current date/time is used. If blank (updates), the date is not changed |
| chg_start_dt | No | The start date of the charging. If blank (creates), the current date/time is used. If blank (updates), the date is not changed |
| chg_end_dt | No | The end  date of the charging. If blank (creates), the current date/time is used. If blank (updates), the date is not changed |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Could not find the specified contract |
| -2 | Could not find the specified bill-to site |
| -3 | Could not find the specified ship-to site |
| -4 | The specified price program is not found |
| -5 | The specified billing option is not valid |
| -6 | The specified billing frequency is not valid |
| -7 | The end charge date is earlier than the start charge date |
| -8 | The specified schedule name already exists for the contract. Cannot create |
| -9 | The specified schedule does not exist. Cannot update |
| ret_objid | Output - Returns the objid of the newly created schedule |

#### Examples

Create a new schedule for contract '42'. Give sites and attention person. Supply a price program, and other options. Specify a value for an extra field named 'x_other_string'.

**JavaScript:**

   var ret_int = fc_cc.create_update_schedule( "42", True, "New Schedule", "Site 42", _
                                        "Attn: Joe Francis", "Site 44", "March Prices", _
                                        "Monthly", "In Advance", "", "", "", "", _
                                        "", 0, "", 0, "x_other_string", "Value here!", _
                                        "", "", "", "")

**Visual Basic:**

   Dim ret_int As Integer

   ret_int = fc_cc.create_update_schedule( "42", True, "New Schedule", "Site 42", _
                                        "Attn: Joe Francis", "Site 44", "March Prices", _
                                        "Monthly", "In Advance", "", "", "", "", _
                                        "", 0, "", 0, "x_other_string", "Value here!", _
                                        "", "", "", "")

 Update the same contract. Clear the attention field, and change the billing frequency.

**JavaScript:**

var ret_int = fc_cc.create_update_schedule("42", False, "New Schedule", _
                        "", "CLEAR", "IGNORE", "", "Quarterly", "", "", "", "", _
                        "", "", 0, "", 0, "", "", "", "", "", "")

**Visual Basic:**

   Dim ret_int As Integer

   ret_int = fc_cc.create_update_schedule("42", False, "New Schedule", _
                        "", "CLEAR", "IGNORE", "", "Quarterly", "", "", "", "", _
                        "", "", 0, "", 0, "", "", "", "", "", "")