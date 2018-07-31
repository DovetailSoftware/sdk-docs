log_subcase_commit
--------------------

log_subcase_commit_list
-------------------------

Public Function log_subcase_commit(ByVal subcase_id As String, _
                ByVal the_title As String, ByVal action_type As String, _
                ByVal log_date As String, ByVal commit_date As String, _
                ByVal prior_warn As Long, ByVal made_to As Boolean, _
                ByVal cont_first As String, ByVal cont_last As String, _
                ByVal cont_phone As String, ByVal note_str As String, _
                ByVal user_name As String, ByVal gen_time_bombs As Boolean, _
                ByVal generate_commit_email As Boolean, _
                ByVal int_fld1 As String, _
                ByVal int_val1 As Long, ByVal int_fld2 As String, _
                ByVal int_val2 As Long, ByVal str_fld1 As String, _
                ByVal str_val1 As String, ByVal str_fld2 As String, _
                ByVal str_val2 As String, ByVal date_fld1 As String, _
                ByVal date_val1 As String) As Integer

Public Function log_subcase_commit_list(ByVal subcase_id As String, _
                    ByVal the_title As String, ByVal action_type As String, _
                    ByVal log_date As String, ByVal commit_date As String, _
                    ByVal prior_warn As Long, ByVal made_to As Boolean, _
                    ByVal cont_first As String, ByVal cont_last As String, _
                    ByVal cont_phone As String, ByVal note_str As String, _
                    ByVal user_name As String, ByVal gen_time_bombs As Boolean, _
                    ByVal generate_commit_email As Boolean, _
                    Optional fld_list As Variant, _
                    Optional type_list As Variant, _
                    Optional val_list As Variant) As Integer

**Description**

These APIs are used to create a commitment against a subcase. The APIs allow for the assigning of a title and action type. The date the commitment is logged can be set, as well as the commitment date, and prior warning. A flag can be set so that the commitment can be made to or by a contact, and the contact can be set. The user who logs the commitment can be set, and additional fields can also be set. Finally, a time bomb (for the commitment) can be generated, as can the email reminders. This last item has been added for consistency with Clarify. Base Clarify sends two email commitments each time a commitment is logged. The first notifies the owner when the commitment expires, and the second notifies the owner when the prior warning (if any) expires. These can only be email commitments, but the delivery mechanism can be modified by changing the _com_tmplte_ record. See Clarify for more details. These APIs allow the programmer to turn off those extra notifications, if desired. The objid of the log created is returned.

The objid of the created log is returned in the FCCS object variable _ret_objid_.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| subcase_id | Yes | The subcase to close |
| the_title | Yes | The title of the commitment |
| action_type | No | The commitment log action type code value |
| log_date | No | The date the log was created. If left blank, the current time is used |
| commit_date | Yes | When the commitment is due. If left blank, set to the log date |
| prior_warn | Yes | How long to warn the owner before the commitment expires. This is recorded in seconds (1 hour = 3600 seconds). If set to 0, no prior  warning is given |
| made_to | Yes | Is the commitment to the contact (True), or by the contact (False) |
| cont_first | Yes | First name of the contact |
| cont_last | Yes | Last name of the contact |
| cont_phone | Yes | Phone number of the contact |
| note_str | No | Additional text notes for the log |
| user_name | No | The user who created the log. If left blank, the current user performs the logging |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). |
| generate_commit_email | Yes | Should the API add the email notifications for the commitment time and prior warning time? |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No title specified

-2                                             Prior warning is negative (warning after the

commitment expires)

-3                                             The commitment date is before the log date

-4                                             Cannot find the specified subcase

-5                                             Specified user is not found

-6                                             Could not find gbst_elm string for COMMIT

-7                                             Could not find the specified log action type

-8                                             Could not find the specified contact

-9                                             Could not find the com_tmplte for WARNING

-10                                           Could not find the com_tmplte for COMMITMENT

-11                                           Cannot find the employee record for the specified user

**Examples**

 Create a log for subcase number 'C154-1'. Set a title and use the default action code, log date, and user. Make the commitment to "Bill Clinton", and make the commitment expire on the default (log) date. Make no prior warning, have no notes, and set no additional fields. Generate a time bomb, and the commitement emails.

**Field version:**

**JavaScript:**

var ret_int = fccs.log_subcase_commit("C154-1", "A title", "", "", "",

          0, true, "Bill", "Clinton", "555-555-1234", "", "", true, true,

          "", 0, "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccs.log_subcase_commit("C154-1", "A title", "", "", "", 0, True, _
          "Bill", "Clinton", "555-555-1234", "", "", True, True, _
          "", 0, "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.log_subcase_commit_list("C154-1", "A title", "", "",

          "", 0, true, "Bill", "Clinton", "555-555-1234", "",

          "", true, true);

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.log_subcase_commit_list("C154-1", "A title", "", "", "", 0, _
          True, "Bill", "Clinton", "555-555-1234", "", "", True, True)

 Create a log for subcase number '2-1'. Set a title, action code, log date, and user. Make the commitment by "Bill Clinton", and make the commitment expire on '1/1/99'. Make a prior warning for two hours, have some notes, and additional fields. Generate neither a time bomb, nor the commitement emails.

**Field version:**

**JavaScript:**

var ret_int = fccs.log_subcase_commit("2-2", "A title", "External Commitment",

          "11/23/97 22:00:00", "1/1/99", 7200, false,

          "Bill", "Clinton", "555-555-1234", "Some notes", "marty",

          false, false, "x_close_int1", 1, "x_close_int2", 456,

          "x_summary2", "More text", "", "",

          "x_other_date", "1/1/99")

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fccs.log_subcase_commit("2-2", "A title", "External Commitment", _
          "11/23/97 22:00:00", "1/1/99", 7200, False, _
          "Bill", "Clinton", "555-555-1234", "Some notes", "marty", _
          False, False, "x_close_int1", 1, "x_close_int2", 456, _
          "x_summary2", "More text", "", "", _
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

var ret_int = fccs.log_subcase_commit_list("2-2", "A title",

          "External Commitment", "11/23/97 22:00:00", "1/1/99", 7200, false,

          "Bill", "Clinton", "555-555-1234", "Some notes", "marty",

          false, false, fld_list, type_list, val_list);

**Visual Basic:**

   Dim ret_int     As Integer

Dim fld_list    As New FCList

Dim type_list   As New FCList

Dim val_list    As New FCList

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

ret_int = fccs.log_subcase_commit_list("2-2", "A title", _
          "External Commitment", _
          "11/23/97 22:00:00", "1/1/99", 7200, False, _
          "Bill", "Clinton", "555-555-1234", "Some notes", "marty", _
          False, False, fld_list, type_list, val_list)