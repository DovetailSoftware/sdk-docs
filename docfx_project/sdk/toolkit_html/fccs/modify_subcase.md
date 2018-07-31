modify_subcase
--------------

modify_subcase_list
---------------------

Public Function modify_subcase(ByVal subcase_id As String, _

                ByVal priority_str As String, ByVal severity_str As String, _

                ByVal user_name As String, ByVal mod_date As String, _

                ByVal only_owner As Boolean, ByVal gen_time_bombs As Boolean, _

                ByVal int_fld1 As String, ByVal int_val1 As Long, _

                ByVal int_fld2 As String, ByVal int_val2 As Long, _

                ByVal str_fld1 As String, ByVal str_val1 As String, _

                ByVal str_fld2 As String, ByVal str_val2 As String, _

                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function modify_subcase_list(ByVal subcase_id As String, _

                ByVal priority_str As String, ByVal severity_str As String, _

                ByVal user_name As String, ByVal mod_date As String, _

                ByVal only_owner As Boolean, ByVal gen_time_bombs As Boolean, _

                Optional fld_list As Variant, Optional type_list As Variant, _

                Optional val_list As Variant) As Integer

**Description**

These APIs are used to modify existing subcases. If the priority or severity is changing, record the new value in the argument. If they are left blank, the value is not changed in the case. The modifier and the time of modification may be specified, and you may specify additional fields. You may have a creation time bomb generated (for notifications).

The argument _only_owner_ allows you to specify that only the current owner of the subcase may modify it. If the user_name (or default user if no name is provided) is not the current owner, and this flag is set to True, the modify will not happen. If _only_owner_ is set to False, any user can make the modification. This is an augmentation of the ClearBasic version of the APIs.

#### Parameters
**Parameter Name**                **Required?**             **Description**

subcase_id                            Yes                         The subcase to modify

priority                                   No                           The new priority for the subcase. If left blank, no change is made

severity                                  No                           The new severity for the subcase. If left blank, no change is made

user_name                             No                           The user who modified the subcase. If left blank, the current user performs

the modify

mod_date                              No                           The date/time the subcase was modified. If left blank, current

date/time is used

only_owner                           Yes                         Should only the owner of the subcase be allowed to modify it?

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

int_fld1, int_fld2                   No                           Names of additional fields to write

str_fld1, str_fld2

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. These values are only used if the

str_val1, str_val2                                                 corresponding field name field is filled with a valid field name

date_val1

fld_list                                    Yes                         List of additional field names to write. List must be present, but does not

                                                                                need to have any items in the list

type_list                                                Yes                         List of additional field data types to write. List must be present, but does not

                                                                                need to have any items in the list

val_list                                   Yes                         List of additional field values to write. List must be present, but does not

                                                                                need to have any items in the list

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             Case is already closed

-3                                             Cannot find the specified priority

-4                                             Cannot find the specified severity

-5                                             Cannot find the specified case type

-6                                             Cannot find the MODIFY activity string

-7                                             Cannot find the specified user

-8                                             Cannot find the employee record for the specified user

-9                                             Another user (not the owner) attempted to modify the subcase and the only_owner flag was set

to True

**Examples  **

 Modify subcase 'C154-1'. Change the priority, but nothing else. Do not write any other fields. Any user can make the change. Also, generate a time bomb. All other information is defaulted.

**Field version:**

**JavaScript:**

var ret_int = fccs.modify_subcase("C154-1", "High", "", "", "", false, true,

                      "", 0, "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccs.modify_subcase("C154-1", "High", "", "", "", False, True, _

                      "", 0, "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.modify_subcase_list("C154-1", "High", "", "", "", false,

                                       true);

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.modify_subcase_list("C154-1", "High", "", "", "", False, True)

 Modify subcase '2-2'. It is modified on November 23, 1997 at 10PM by marty. Make sure that marty is the owner of the subcase to modify it. The severity is 'Low'. There are no time bombs generated, and some additional fields are also filled in.

**Field version:**

**JavaScript:**

var ret_int = fccs.modify_subcase("2-2", "", "Low", "marty",

                      "11/23/97 22:00:00", true, false,

                      "x_close_int1", 1, "x_close_int2",

                      456, "x_summary2", "More text", "", "",

                         "x_other_date", "1/1/99");

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccs.modify_subcase("2-2", "", "Low", "marty", _

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

var ret_int = fccs.modify_subcase_list("2-2", "", "Low", "marty",

                           "11/23/97 22:00:00", true, false,

                           fld_list, type_list, val_list);

**Visual Basic:**

   Dim ret_int   As Integer

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

ret_int = fccs.modify_subcase_list("2-2", "", "Low", "marty", _

                           "11/23/97 22:00:00", True, False, _

                           fld_list, type_list, val_list)