modify_case
-----------

modify_case_list
------------------

Public Function modify_case(ByVal case_id As String, _
                ByVal priority_str As String, ByVal severity_str As String, _
                ByVal case_type As String, ByVal user_name As String, _
                ByVal mod_date As String, ByVal only_owner As Boolean, _
                ByVal gen_time_bombs As Boolean, _
                ByVal the_title As String, ByVal ml_obj As Long, _
                ByVal sp_obj As Long, ByVal contr_obj As Long, _
                ByVal int_fld1 As String, ByVal int_val1 As Long, _
                ByVal int_fld2 As String, ByVal int_val2 As Long, _
                ByVal str_fld1 As String, ByVal str_val1 As String, _
                ByVal str_fld2 As String, ByVal str_val2 As String, _
                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function modify_case_list(ByVal case_id As String, _
                ByVal priority_str As String, ByVal severity_str As String, _
                ByVal case_type As String, ByVal user_name As String, _
                ByVal mod_date As String, ByVal only_owner As Boolean, _
                ByVal gen_time_bombs As Boolean, _
                ByVal the_title As String, ByVal ml_obj As Long, _
                ByVal sp_obj As Long, ByVal contr_obj As Long, _
                Optional fld_list As Variant, Optional type_list As Variant, _
                Optional val_list As Variant) As Integer

**Description**

These APIs are used to modify existing cases. If the priority, severity, or case type is changing, record the new value in the argument. If they are left blank, the value is not changed in the case. The modifier and the time of modification may be specified, and you may specify additional fields. You may have a creation time bomb generated (for notifications).

The argument _only_owner_ allows you to specify that only the current owner of the case may modify it. If the user_name (or default user if no name is provided) is not the current owner, and this flag is set to True, the modify will not happen. If _only_owner_ is set to False, any user can make the modification. This is an augmentation of the ClearBasic version of the APIs.

There are four arguments to this method that allow you to change (or clear) various parameters. The title, mod_level objid, site_part objid, and contract objid can be set (if you wish), or can be left alone (with "" for title, and 0 for the others), or can be cleared (with "CLEARFIELD" for title, and -999 for the others). This is an augmentation from the base ClearBasic APIs that do not provide this functionality. These arguments are particularly useful in web settings.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The case to modify |
| priority_str | No | The new priority for the case. If left blank, no change is made |
| severity_str | No | The new severity for the case. If left blank, no change is made |
| case_type | No | The new case_type for the case. If left blank, no change is made |
| user_name | No | The user who modified the case. If left blank, the current user performs the modify |
| the_title | No | The case title. If empty (""), no change is made. To clear the title field, use the string "CLEARFIELD." |
| ml_obj | No | Objid of the mod_level (part revision) related to the case. If 0 is used, no change is made. If set to -999, the relation is cleared (set to NULL). |
| sp_obj | No | Objid of the site_part related to the case. If 0 is used, no change is made. If set to -999, the relation is cleared (set to NULL). |
| contr_obj | No | Objid of the contract related to the case. If 0 is used, no change is made. If set to -999, the relation is cleared (set to NULL). |
| mod_date | No | The date/time the case was modified. If left blank, current date/time is used |
| only_owner | Yes | Should only the owner of the case be allowed to modify it? |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                          **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             Case is already closed

-3                                             Cannot find the specified priority

-4                                             Cannot find the specified severity

-5                                             Cannot find the specified case type

-6                                             Cannot find the MODIFY activity string

-7                                             Cannot find the specified user

-8                                             Cannot find employee record for specified user

-9                                             Another user (not the owner) attempted to modify the case and the only_owner flag was set to

True

**Examples**

 Modify case 'C154'. Change the priority, but nothing else. Do not write any other fields. Any user can make the change. Also, generate a time bomb. All other information is defaulted.

**Field version:**

**JavaScript:**

var ret_int = fccs.modify_case("C154", "High", "", "", "", "", 0, 0, 0,

                      "", false, true, "", 0, "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccs.modify_case("C154", "High", "", "", "", "", 0, 0, 0, _
                      "", False, True, "", 0, "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.modify_case_list("C154", "High", "", "", "", "",

                   0, 0, 0, "", false, true);

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.modify_case_list("C154", "High", "", "", "", "", _
                   0, 0, 0, "", False, True)

 Modify case '2'. It is modified on November 23, 1997 at 10PM by marty. Make sure that marty is the owner of the case to modify it. The severity is 'Low' and the case type is set to 'Question'. The title is changed, and the contract is set, and the mod_level and site_part are cleared. There are no time bombs generated, and some additional fields are also filled in.

**Field version:**

**JavaScript:**

var ret_int = fccs.modify_case("2", "", "Low", "Question", "marty",

                      "New title", -999, -999, 268435458,

                      "11/23/97 22:00:00", true, false,

                      "x_close_int1", 1, "x_close_int2",

                      456, "x_summary2", "More text", "", "",

                         "x_other_date", "1/1/99");

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccs.modify_case("2", "", "Low", "Question", "marty", _
                      "New title", -999, -999, 268435458, _
                      "11/23/97 22:00:00", True, False, _
                      "x_close_int1", 1, "x_close_int2", _
                      456, "x_summary2", "More text", "", "", _
                         "x_other_date", "1/1/99")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFL.FCList");

var type_list = Server.CreateObject("FCFL.FCList");

var val_list  = Server.CreateObject("FCFL.FCList");

fld_list.AppendItem("x_close_int1");

type_list.AppendItem("Long");

val_list.AppendItem ("1");

fld_list.AppendItem("x_close_int2");

type_list.AppendItem("Long");

val_list.AppendItem ("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = fccs.modify_case_list("2", "", "Low", "Question", "marty",

                           "New title", -999, -999, 268435458,

                           "11/23/97 22:00:00", true, false,

                           fld_list, type_list, val_list);

**Visual Basic:**

   Dim ret_int     As Integer

Dim fld_list    As New List

Dim type_list   As New List

Dim val_list    As New List

fld_list.AppendItem "x_close_int1"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(1))

fld_list.AppendItem "x_close_int2"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(456))

fld_list.AppendItem "x_summary2"

type_list.AppendItem "String"

val_list.AppendItem "More text"

fld_list.AppendItem "x_other_date"

type_list.AppendItem "Date"

val_list.AppendItem "1/1/99"

ret_int = fccs.modify_case_list("2", "", "Low", "Question", "marty", _
                           "New title", -999, -999, 268435458, _
                           "11/23/97 22:00:00", True, False, _
                           fld_list, type_list, val_list)