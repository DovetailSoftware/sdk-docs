close_case
----------

close_case_list
-----------------

Public Function close_case(ByVal case_id As String, _
                           ByVal the_status As String, _
                           ByVal resolution_str As String, _
                           ByVal summary_str As String, _
                           ByVal user_name As String, _
                           ByVal close_date As String, _
                           ByVal units_used As Double, _
                           ByVal close_sums As String, _
                           ByVal gen_time_bombs As Boolean, _
                           ByVal int_fld1 As String, _
                           ByVal int_val1 As Long, ByVal int_fld2 As String, _
                           ByVal int_val2 As Long, ByVal str_fld1 As String, _
                           ByVal str_val1 As String, ByVal str_fld2 As String, _
                           ByVal str_val2 As String, ByVal date_fld1 As String, _
                           ByVal date_val1 As String) As Integer

Public Function close_case_list(ByVal case_id As String, _
                                ByVal the_status As String, _
                                ByVal resolution_str As String, _
                                ByVal summary_str As String, _
                                ByVal user_name As String, _
                                ByVal close_date As String, _
                                ByVal units_used As Double, _
                                ByVal close_sums As String, _
                                ByVal gen_time_bombs As Boolean, _
                                Optional fld_list As Variant, _
                                Optional type_list As Variant, _
                                Optional val_list As Variant) As Integer

**Description**

These APIs are used to close a case. The case must be in open condition. The APIs allow for the assigning of a closed status, as well as resolution codes, the number of units to apply to the contract for the case, and a summary string. The APIs allow you to specify a user who performed the close, as well as the date/time of closure. The APIs allow for additional fields to be written to the close_case object, and the APIs return the objid of the newly created close_case object (in the FCCS object return variable _ret_objid_). The APIs can also generate a time bomb (for business rule notification).

There is an argument (close_sums) that can be used for advanced functioning of the API. In some cases (for example, web pages), you may wish to show the summation times for the case (phone log time, research time, time and expense logs), and allow the user to override some of them. This can be performed with the _preclose_case_ API.

After those times are determined, it would be useful to close the case with them. That is the purpose of the _close_sums_ argument. It is a pipe-delimited string ("|"), that contains exactly 12 items. Those items are detailed below. If you do not have a time for a given item, use 0 as a placeholder.

If the _close_sums_ argument is used, the API will not spend the effort to do the log summation. That means that if a log was created between the time you call on _preclose_case_, and this API, it will not be added to the summation.

In almost **_all_** cases, this argument is left blank.

* 1) Total phone time (closed subcase and phone log for the case)
* 2) Captured phone time (case phone logs only)
* 3) Total research time (closed subcase and research logs for the case)
* 4) Captured research time (case research logs only)
* 5) Total non-billable time (closed subcase and case time logs)
* 6) Captured non-billable time (case time logs only)
* 7) Total billable time (closed subcase and case time logs)
* 8) Captured billable time (case time logs only)
* 9) Total non-billable expenses (closed subcase and case expense logs)
* 10) Captured non-billable expenses (case time logs only)
* 11) Total billable expenses (closed subcase and case expense logs)
* 12) Captured billable expenses (case time logs only)

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The case to close |
| the_status | No | The closed condition status for the case. If left blank, the default status for closed condition is used |
| resolution | No | The resolution code for the close. If left blank, the default code is used |
| summary | No | An optional text string with information about the closure |
| user_name | No | The user who closed the case. If left blank, the current user performs the close |
| close_date | No | The date/time of the close. If left blank, the current time is used |
| units_used | No | The number of units to charge against the contract for the case. If the case has no contract, this field must be 0 |
| close_sums | No | Sums already determined for the close_case record (see above). If blank, the summation times are calculated by this API |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | No | List of additional field names to write. |
| type_list | No | List of additional field data types to write |
| val_list | No | List of additional field values to write. |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             The specified case is already closed

-3                                             There is at least one open general subcase

-10                                           The specified user is not found

-11                                           The specified status is not a valid status for condition 'Closed'

-12                                           Could not find gbst_elm string for CASE CLOSE

-13                                           Could not find the specified resolution string

-14                                           Units to charge are specified, but there is no contract for this case

-15                                           No employee record was found for the specified user

-16                                           A close_sums string was passed in with an invalid format

**Examples**

 Close case number 'C154'. Use the default status and resolution code. Add no summary text, and let the close be by the default user at the current date/time. There is no contract, so there are no units to charge, and no additional fields to write. Generate a time bomb.

**Field version:**

**JavaScript:**

var ret_int = fccs.close_case("C154", "", "", "", "", "", 0, "", true, "", 0,

                              "", 0, "", "", "", "", "", "");

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.close_case("C154", "", "", "", "", "", 0, "", True, "", 0, _
                     "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.close_case_list("C154", "", "", "", "", "", 0, "", true);

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.close_case_list("C154", "", "", "", "", "", 0, "", True)

 Close case number '2' at 10PM on November 23rd of 1997 by marty. Put in status 'Closed-final', with resolution 'Software Shipped', summary of 'Auto-close' with 1.4 units charged against the contract. There are several 'x_' fields to be written to the close_case object. Don't generate a time bomb

**Field version:**

**JavaScript:**

var ret_int = fccs.close_case("2", "Closed-final", "Software Shipped",

                "Auto-close", "marty", "11/23/97 22:00:00", 1.4,

                "", true, "x_close_int1", 1, "x_close_int2", 456,

                "x_summary2", "More text", "", "",

                "x_other_date", "1/1/99");

**Visual Basic:**

   Dim ret_int     As Integer

ret_int = fccs.close_case("2", "Closed-final", "Software Shipped", _
                "Auto-close", "marty", "11/23/97 22:00:00", 1.4, _
                "", True, "x_close_int1", 1, "x_close_int2", 456, _
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

var ret_int = fccs.close_case_list("2", "Closed-final", "Software Shipped",

                "Auto-close", "marty", "11/23/97 22:00:00", 1.4,

                "", true, fld_list, type_list, val_list);

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

ret_int = fccs.close_case_list("2", "Closed-final", "Software Shipped", _
                "Auto-close", "marty", "11/23/97 22:00:00", 1.4, _
                "", True, fld_list, type_list, val_list)