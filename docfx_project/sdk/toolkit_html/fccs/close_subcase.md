close_subcase
-------------

close_subcase_list
--------------------

Public Function close_subcase(ByVal subcase_id As String, _

                              ByVal the_status As String, _

                              ByVal resolution_str As String, _

                              ByVal summary_str As String, _

                              ByVal user_name As String, _

                              ByVal close_date As String, _

                              ByVal gen_time_bombs As Boolean, _

                              ByVal int_fld1 As String, _

                              ByVal int_val1 As Long, ByVal int_fld2 As String, _

                              ByVal int_val2 As Long, ByVal str_fld1 As String, _

                              ByVal str_val1 As String, _

                              ByVal str_fld2 As String, _

                              ByVal str_val2 As String, _

                              ByVal date_fld1 As String, _

                              ByVal date_val1 As String) As Integer

Public Function close_subcase_list(ByVal subcase_id As String, _

                                   ByVal the_status As String, _

                                   ByVal resolution_str As String, _

                                   ByVal summary_str As String, _

                                   ByVal user_name As String, _

                                   ByVal close_date As String, _

                                   ByVal units_used As Double, _

                                   ByVal gen_time_bombs As Boolean, _

                                   Optional fld_list As Variant, _

                                   Optional type_list As Variant, _

                                   Optional val_list As Variant) As Integer

**Description**

These APIs are used to close a subcase. The subcase must be in open condition. The APIs allow for the assigning of a closed status, as well as resolution codes, and a summary string. The APIs allow you to specify a user who performed the close, as well as the date/time of closure. The APIs allow for additional fields to be written to the close_case object via three list arguments, and the API returns the objid of the newly created close_case object(in the FCCS object return variable _ret_objid_). The APIs can also generate a time bomb (for business rule notification). The business rule version of this API does not return the objid of the new close_case object.

#### Parameters
**Parameter Name**                **Required?**             **Description**

subcase_id                            Yes                         The subcase to close

the_status                             No                           The closed condition status for the subcase. If left blank, the default status

                                                                                for closed condition is used

resolution                              No                           The resolution code for the close. If left blank, the default code is used

summary                                No                           An optional text string with information about the closure

user_name                             No                           The user who closed the subcase. If left blank, the current user performs

the close

close_date                             No                           The date/time of the close. If left blank, the current time is used

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

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Cannot find the specified subcase

-2                                             The specified subcase is already closed

-10                                           The specified user is not found

-11                                           The specified status is not a valid status for condition 'Closed'

-12                                           Could not find gbst_elm string for CASE CLOSE

-13                                           Could not find the specified resolution string

-14                                           Units to charge are specified, but there is no contract for this case

-15                                           No employee record was found for the specified user

**Examples  **

 Close subcase number 'C154-1'. Use the default status and resolution code. Add no summary text, and let the close be by the default user at the current date/time. There are no additional fields to write. Generate a time bomb.

**Field version:**

**JavaScript:**

var ret_int = fccs.close_subcase("C154-1", "", "", "", "", "", true, "", 0,

                              "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.close_subcase("C154-1", "", "", "", "", "", True, "", 0, _

                     "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.close_subcase_list("C154-1", "", "", "", "", "", true);

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.close_subcase_list("C154-1", "", "", "", "", "", True)

 Close subcase number '2-1' at 10PM on November 23rd of 1997 by marty. Put in status 'Closed-final', with resolution 'Software Shipped', summary of 'Auto-close'. There are several 'x_' fields to be written to the close_case object. Don't generate a time bomb

**Field version:**

**JavaScript:**

var ret_int = fccs.close_subcase("2-1", "Closed-final", "Software Shipped",

                "Auto-close", "marty", "11/23/97 22:00:00",

                true, "x_close_int1", 1, "x_close_int2", 456,

                "x_summary2", "More text", "", "",

                "x_other_date", "1/1/99");

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.close_subcase("2-1", "Closed-final", "Software Shipped", _

                "Auto-close", "marty", "11/23/97 22:00:00", _

                True, "x_close_int1", 1, "x_close_int2", 456, _

                "x_summary2", "More text", "", "", _

                "x_other_date", "1/1/99")

**List version:**

**JavaScript:**

var fld_list  = Server.CreateObject("FCFL.FCList");

var type_list = Server.CreateObject("FCFL.FCList");

var val_list  = Server.CreateObject("FCFL.FCList");

fld_list.AppendItem("x_close_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_close_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = fccs.close_subcase_list("2-1", "Closed-final",

                "Software Shipped", "Auto-close", "marty",

                "11/23/97 22:00:00",

                true, fld_list, type_list, val_list);

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

ret_int = fccs.close_subcase_list("2-1", "Closed-final", "Software Shipped", _

                "Auto-close", "marty", "11/23/97 22:00:00", _

                True, fld_list, type_list, val_list)