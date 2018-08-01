update_action_item
--------------------

update_action_item_list
-------------------------

```
Public Function update_action_item(ByVal task_id As String, _
                                   ByVal title As String, _
                                   ByVal notes As String, _
                                   ByVal first_name As String, _
                                   ByVal last_name As String, _
                                   ByVal phone As String, _
                                   ByVal acct_name As String, _
                                   ByVal lead_first As String, _
                                   ByVal lead_last As String, _
                                   ByVal opp_id As String, _
                                   ByVal the_type As String, _
                                   ByVal priority As String, _
                                   ByVal start_date As String, _
                                   ByVal complete_date As String, _
                                   ByVal status As String, _
                                   ByVal update_date As String, _
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
Public Function update_action_item_list(ByVal task_id As String, _
                                        ByVal title As String, _
                                        ByVal notes As String, _
                                        ByVal first_name As String, _
                                        ByVal last_name As String, _
                                        ByVal phone As String, _
                                        ByVal acct_name As String, _
                                        ByVal lead_first As String, _
                                        ByVal lead_last As String, _
                                        ByVal opp_id As String, _
                                        ByVal the_type As String, _
                                        ByVal priority As String, _
                                        ByVal start_date As String, _
                                        ByVal complete_date As String, _
                                        ByVal status As String, _
                                        ByVal update_date As String, _
                                        Optional fld_list As Variant, _
                                        Optional type_list As Variant, _
                                        Optional val_list As Variant) As Integer
```

#### Description

These APIs are used to update existing action items. Virtually all of the data is optional - only the action item ID is required. For most of the input fields if you leave them blank no change will be made to the existing action item. To clear a data item (for example, the contact), set the data field to "CLEAR". You may modify the the title, notes, contact, account, lead, opportunity, task type, priority, status (within the same condition), start date, and the completion date.

If you want to relate a contact to the action item you must supply all three of the contact fields. Likewise, if you wish to associate a lead to the action item you must supply both lead fields.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| task_id | Yes | ID number of the action item to modify |
| title | No | The title of the action item. If blank, no change is made. To clear, specify "CLEAR" |
| notes | No | Notes about the action item. If blank, no change is made. To clear, specify "CLEAR" |
| first_name | No | First name of the related contact If first name and last name are blank, no change is made. To clear,  specify "CLEAR" |
| last_name | No | Last name of the related contact. If first name and last name are blank, no change is made. To clear the contact, specify "CLEAR" in the first name |
| phone | No | Phone number of the related contact |
| acct_name | No | Name of the account to relate to the action item. If blank, no change is made. To clear, specify "CLEAR" |
| lead_first | No | First name of the related lead. If first and last name are blank, no change is made. If set to "CLEAR", the lead is cleared out |
| lead_last | No | Last name of the related lead. If first and last name are blank, no change is made |
| opp_id | No | Opportunity related to the action item. If blank, no change is made. To clear, specify "CLEAR" |
| the_type | No | Type of the action item (code list value). If empty, no change is made |
| priority | No | Priority for the action item. If empty, no change is made |
| start_date | No | Start date for the action item. If empty, action item's start date is used |
| complete_date | No | End date for the action item. If empty, action item's due date is used |
| status | No | Status for the action item. If empty, no change is made |
| update_date | No | When was the action item modified?  If empty, current date/time is used |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified action item |
| -2 | The supplied contact could not be found |
| -3 | Cannot find the specified account |
| -4 | Cannot find the specified lead |
| -5 | Cannot find the specified opportunity |
| -6 | The specified status cannot be found for the action item's current condition |
| -7 | The completion date is earlier than the start date |
| -8 | The supplied start date is not a valid date |
| -9 | The supplied completion date is not a valid date |
| -10 | The specified type cannot be found |
| -11 | The specified priority cannot be found |

#### Examples

Update action item '9'. Specify a new title and notes. Specify a new contact and lead, but clear out the opportunity, and account. Also specify a new task type and priority. Leave the start/due times alone, but specify a new status. Set a user-defined field

**Field version:**

**JavaScript:**
```
var ret_int = fcsfa.update_action_item("9", "New Title", "New notes", "John",
                   "Doe", "555-1212", "CLEAR", "Lead", "Guy", "CLEAR",
                   "Fax", "Low", "", "", "NewStat", "", "x_int1", 44, "", 0,
			       "", "", "", "", "", "");
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fcsfa.update_action_item("9", "New Title", "New notes", "John",_
                   "Doe", "555-1212", "CLEAR", "Lead", "Guy", "CLEAR", _
                   "Fax", "Low", "", "", "NewStat", "", "x_int1", 44, "", 0, _
                   "", "", "", "", "", "")
```

**List version:**

**JavaScript:**
```
var fld_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");
var type_list = Server.CreateObject("FCFLCOMPAT.FCLIST");
var val_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

fld_list.AppendItem("x_int1");
type_list.AppendItem("Long");
val_list.AppendItem("44");

var ret_int = fcsfa.update_action_item("9", "New Title", "New notes", "John",
       "Doe", "555-1212", "CLEAR", "Lead", "Guy", "CLEAR",
       "Fax", "Low", "", "", "NewStat", "", fld_list,
       type_list, val_list);
```

**Visual Basic:**
```
Dim ret_int As Integer
Dim fld_list   As New FCList
Dim type_list  As New FCList
Dim val_list   As New FCList

fld_list.AppendItem("x_int1")
type_list.AppendItem("Long")
val_list.AppendItem("44")

ret_int = fcsfa.update_action_item("9", "New Title", "New notes", "John",_
                   "Doe", "555-1212", "CLEAR", "Lead", "Guy", "CLEAR", _
                   "Fax", "Low", "", "", "NewStat", "", fld_list, _
                   type_list, val_list)
```