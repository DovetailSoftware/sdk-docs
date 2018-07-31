create_action_item
--------------------

create_action_item_list
-------------------------

Public Function create_action_item(ByVal title As String, _
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
                                   ByVal due_date As String, _
                                   ByVal complete_date As String, _
                                   ByVal status As String, _
                                   ByVal create_date As String, _
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

Public Function create_action_item_list(ByVal title As String, _
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
                                        ByVal due_date As String, _
                                        ByVal complete_date As String, _
                                        ByVal status As String, _
                                        ByVal create_date As String, _
                                        ByVal user_name As String, _
                                        ByVal gen_time_bombs As Boolean, _
                                        Optional fld_list As Variant, _
                                        Optional type_list As Variant, _
                                        Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new action items. Most of the data you can specify is optional for the action item, including the contact, lead, account, and opportunity. You may specify the creation date, the start date, and the completion date. If you do not specify a completion date, it will be set to one week after the start date. You may specify the user who created the action item, and you may specify additional fields. You may have a creation time bomb generated (for notifications). The ID of the new action item is returned.

If you want to relate a contact to the action item you must supply all three of the contact fields. Likewise, if you wish to associate a lead to the action item you must supply both lead fields.

The task_id of the newly-created action item will be returned in _fcsfa.ret_id_num_. The objid of the action item will be returned in _fcsfa.ret_objid_.  
  

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| title | No | The title of the action item |
| notes | No | Notes about the action item |
| first_name | No | First name of the related contact |
| last_name | No | Last name of the related contact |
| phone | No | Phone number of the related contact |
| acct_name | No | Name of the account to relate to the action item |
| lead_first | No | First name of the related lead |
| lead_last | No | Last name of the related lead |
| opp_id | No | Opportunity related to the action item |
| the_type | No | Type of the action item (code list value). If empty, default value is used |
| priority | No | Priority for the action item. If empty, default value is used |
| start_date | No | Start date for the action item. If empty, current date/time is used |
| due_date | No | Required completion date of the task. If empty, one week after the start |
| complete_date | No | End date for the action item. If empty, default value is used |
| status | No | Status for the action item. If empty, default status is used |
| create_date | No | When was the action item created?  If empty, current date/time is used |
| user_name | No | Who created the action item? If empty, current user is used |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). and prior warning time? |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             The completion date is earlier than the start date

-2                                             The supplied contact could not be found

-3                                             The specified user could not be found

-4                                             Cannot find the specified account

-5                                             Cannot find the specified lead

-6                                             Cannot find the specified opportunity

-7                                             The specified status cannot be found

-8                                             The specified type cannot be found

-9                                             The specified priority cannot be found

-10                                           The CREATE ACTION ITEM activity code could not be found

-11                                           The employee record for the specified user could not be found

**Examples**

 Create a new action item. Give a title and notes for the action item. The contact is 'Bill Gates'. The account is 'Microsoft.' A status, type, and priority are given. Create the action item on Janurary 1st, set to start on January 2nd, and to expire at the end of the month. Generate time bombs, and set a user-defined field.

**Field version:**

**JavaScript:**

var ret_int = fcsfa.create_action_item("The Title", "Some notes", "Bill",

                "Gates", "206-555-1212", "Microsoft", "", "", "",

       "Fax", "High", "1/2/00", "1/30/00", "Not Started",

       "1/1/00", "", true, "", 0, "", 0, "x_str1",

       "A value", "", "", "", "")

**Visual Basic:**

   Dim ret_int    As Integer

ret_int = fcsfa.create_action_item("The Title", "Some notes", "Bill", _
            "Gates", "206-555-1212", "Microsoft", "", "", "", _
   "Fax", "High", "1/2/00", "1/30/00", "Not Started", _
   "1/1/00", "", True, "", 0, "", 0, "x_str1", _
   "A value", "", "", "", "")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

var type_list = Server.CreateObject("FCFLCOMPAT.FCLIST");

var val_list  = Server.CreateObject("FCFLCOMPAT.FCLIST");

fld_list.AppendItem("x_create_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_ create_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

var ret_int = fcsfa.create_action_item("The Title", "Some notes", "Bill",

                "Gates", "206-555-1212", "Microsoft", "", "", "",

       "Fax", "High", "1/2/00", "1/30/00", "Not Started",

       "1/1/00", "", true, fld_list, type_list, val_list);

**Visual Basic:**

   Dim ret_int    As Integer

Dim fld_list   As New FCList

Dim type_list  As New FCList

Dim val_list   As New FCList

fld_list.AppendItem("x_create_int1")

type_list.AppendItem("Long")

val_list.AppendItem("1")

fld_list.AppendItem("x_ create_int2")

type_list.AppendItem("Long")

val_list.AppendItem("456")

fld_list.AppendItem("x_summary2")

type_list.AppendItem("String")

val_list.AppendItem("More text")

ret_int = fcsfa.create_action_item("The Title", "Some notes", "Bill", _
            "Gates", "206-555-1212", "Microsoft", "", "", "", _
   "Fax", "High", "1/2/00", "1/30/00", "Not Started", _
   "1/1/00", "", True, fld_list, type_list, val_list)