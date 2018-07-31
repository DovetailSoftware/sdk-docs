create_subcase
--------------

create_subcase_list
---------------------

Public Function create_subcase(ByVal case_id As String, _
                ByVal the_title As String, ByVal is_general As Boolean, _
                ByVal priority_str As String, ByVal severity_str As String, _
                ByVal status_str As String, ByVal note_str As String, _
                ByVal queue_name As String, ByVal cr_date As String, _
                ByVal due_date As String, ByVal prior_warn As Long, _
                ByVal user_name As String, ByVal gen_time_bombs As Boolean, _
                ByVal int_fld1 As String, ByVal int_val1 As Long, _
                ByVal int_fld2 As String, ByVal int_val2 As Long, _
                ByVal str_fld1 As String, ByVal str_val1 As String, _
                ByVal str_fld2 As String, ByVal str_val2 As String, _
                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

Public Function create_subcase_list(ByVal case_id As String, _
                ByVal the_title As String, ByVal is_general As Boolean, _
                ByVal priority_str As String, ByVal severity_str As String, _
                ByVal status_str As String, ByVal note_str As String, _
                ByVal queue_name As String, ByVal cr_date As String, _
                ByVal due_date As String, ByVal prior_warn As Long, _
                ByVal user_name As String, ByVal gen_time_bombs As Boolean, _
                Optional fld_list As Variant, Optional type_list As Variant, _
                Optional val_list As Variant) As Integer

**Description**

These APIs are used to create new subcases. They require that a valid, open case be used as the parent case. You must specify if it is either general or administrative. Everything else is optional. You may specify a title, priority, severity, initial status, queue to dispatch to, due date and prior warning, user who creates the subcase, and subcase creation time. You may add additional fields to the subcase object. You may have a creation time bomb generated (for notifications).

You may also initially dispatch the subcase. If you specify a queue name, the subcase will be dispatched to that queue. In addition, an activity log entry will be added, and a time_bomb will be generated (if time bombs are enabled).

If successful, these APIs return both the _objid_ and the _id_number_ of the newly-created case. They are returned in the FCCS object variables _ret_objid_  and _ret_id_num_.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | The ID of the parent case |
| the_title | No | Title for the subcase. It is suggested that you always have a title |
| is_general | Yes | Is this a general subcase (True), or administrative (False) |
| priority | No | Priority for the subcase. If left blank, default value is used |
| severity | No | Severity for the subcase. If left blank, default value is used |
| status | No | Initial status for the subcase. If left blank, default status is used |
| notes | No | Subcase notes |
| queue_name | No | Name of the queue to dispatch the subcase to. If left blank, the subcase is not initially dispatched |
| cr_date | No | Subcase creation date. If left blank, current date/time is used |
| due_date | No | When the commitment for subcase is due. If left blank,  the subcase creation time is used |
| prior_warn | No | How long before the due date should a warning be issued (in seconds) |
| user_name | No | The user who created the subcase. If left blank, the current user performs the create |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). and prior warning time? |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified master case ID

-2                                             The prior warning (in seconds) is negative

-10                                           The commitment date is prior to the case creation date

-11                                           The warning date is prior to the case creation date

-12                                           The specified user is not found

-14                                           The specified priority is not found

-15                                           The specified severity is not found

-16                                           The specified status is not found

-17                                           The CREATE SUBCASE activity string is not found

-18                                           The CREATE ADMIN SUBCASE activity string is not found

-19                                           The DISPATCH activity string is not found

-23                                           The specified queue is not found

-24                                           Could not build a new unique ID number. See if stored  procedure is compiled

in the database

-25                                           Could not locate an employee record for the specified user

**Examples**

 Create a general subcase for case number 'C154'. Set a title and use the default priority, severity, status, user_name and dates. Make no prior warning, have no notes, and set no additional fields. Generate a time bomb.

**Field version:**

**JavaScript:**

var ret_int = fccs.create_subcase("C154", "Subcase Title", true,

          "", "", "", "", "", "", "", 0, "", true,

          "", 0, "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int    As Integer

ret_int = fccs.create_subcase("C154", "Subcase Title", True, _
          "", "", "", "", "", "", "", 0, "", True, _
          "", 0, "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.create_subcase_list("C154", "Subcase Title", true,

          "", "", "", "", "", "", "", 0, "", true);

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.create_subcase_list("C154", "Subcase Title", True, _
          "", "", "", "", "", "", "", 0, "", True)

 Create an administrative subcase for case number '2'. Set a title, priority, severity, status, notes, creation date, due date, a prior warning of two hours, and dispatch it to 'Queue 2'. Set it so that marty created the case, and add some additional fields. Do not generate a time bomb.

**Field version:**

**JavaScript:**

var ret_int = fccs.create_subcase("2", "A title", false, "High",

          "Low", "Solving", "Some notes", "Queue 2",

          "11/23/97 16:00:00", "11/24/97 13:00:00", 7200,

          "marty", false, "x_create_int1", 1, "x_create_int2",

          456, "x_summary2", "More text", "", "",

          "x_other_date", "1/1/99");

**Visual Basic:**

   Dim ret_int    As Integer

ret_int = fccs.create_subcase("2", "A title", False, "High", _
          "Low", "Solving", "Some notes", "Queue 2", _
          "11/23/97 16:00:00", "11/24/97 13:00:00", 7200, _
          "marty", False, "x_create_int1", 1, "x_create_int2", _
          456, "x_summary2", "More text", "", "", _
          "x_other_date", "1/1/99")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFL.FCList");

var type_list = Server.CreateObject("FCFL.FCList");

var val_list  = Server.CreateObject("FCFL.FCList");

fld_list.AppendItem("x_create_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_ create_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = fccs.create_subcase_list("2", "A title", false, "High",

          "Low", "Solving", "Some notes", "Queue 2",

          "11/23/97 16:00:00", "11/24/97 13:00:00", 7200,

          "marty", false, type_list, val_list);

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

fld_list.AppendItem("x_other_date")

type_list.AppendItem("Date")

val_list.AppendItem("1/1/99")

ret_int = fccs.create_subcase_list("2", "A title", False, "High", _
          "Low", "Solving", "Some notes", "Queue 2", _
          "11/23/97 16:00:00", "11/24/97 13:00:00", 7200, _
          "marty", False, type_list, val_list)