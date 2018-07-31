close_cr
--------

close_cr_list
---------------

Public Function close_cr(ByVal cr_id As String, _

 ByVal the_status As String, _

 ByVal notes As String, _

 ByVal test_case As String, _

 ByVal int_release As String, _

                         ByVal user_name As String, _

                         ByVal close_date As String, _

                         ByVal gen_time_bombs As Boolean, _

 ByVal int_fld1 As String, ByVal int_val1 As Long, _

 ByVal int_fld2 As String, ByVal int_val2 As Long, _            

                         ByVal str_fld1 As String, ByVal str_val1 As String, _

                         ByVal str_fld2 As String, ByVal str_val2 As String, _

                         ByVal date_fld1 As String, ByVal date_val1 As String) _

                         As Integer

Public Function close_cr_list(ByVal cr_id As String, _

ByVal the_status As String, _

ByVal notes As String, _

ByVal test_case As String, _

ByVal int_release As String, _

                              ByVal user_name As String, _

                              ByVal close_date As String, _

                              ByVal gen_time_bombs As Boolean, _

Optional fld_list As Variant, _

                              Optional type_list As Variant, _

Optional val_list As Variant) As Integer

**Description**

These APIs are used to close a change request. The change request must be in a condition/status that allows the transition to the closed condition. The APIs allow for the assigning of a closed status, as well as notes, the test cases used to verify the close, and the release. The APIs allow you to specify a user who performed the close, as well as the date/time of closure. The APIs allow for additional fields to be written to the close_bug object.  The APIs can also generate a time bomb (for business rule notification).

#### Parameters
**Parameter Name**                **Required?**             **Description**

cr_id                                       Yes                         The change request Id to be closed

the_status                             No                           The closed condition status for the CR. If left blank, the default status

                                                                                for closed condition is used

notes                                      No                           Notes about the closure

test_case                               No                           Test case string for closure

int_release                             No                           Release information for the closure

user_name                             No                           The user who closed the CR. If left blank, the current user performs

the close

close_date                             No                           The date/time of the close. If left blank, the current time is used

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules).

int_fld1, int_fld2                   No                           Names of additional fields to write.  Must use "" if not using

str_fld1, str_fld2                                                   these parameters

date_fld1

int_val1, int_val2                 No                           Values for the additional fields. Must use "" (string) or 0 (long)

str_val1, str_val2                                                 if not using these parameters

date_val1

fld_list                                    No                           List of additional field names to write

type_list                                                No                           List of additional field data types to write

val_list                                   No                           List of additional field values to write

**Returns**

**Value**                **Meaning**

0 No errors; sets objid of new close_bug object in the ret_objid (Long) global variable

-1                                             Cannot find the specified change request

-2                                             The specified change request is already closed

-3                                             The CR is currently dispatched

-4                                             The specified user is not found

-5                                             Cannot find gbst_elm rank 4800 for string CHG STS:CLOSED

-6                                             The specified status is not a valid status for condition 'CR Closed'

-7                                             Status transition not defined in Policies and Customers

-8                                             Status transition not allowed for specified user

-16                                           Privclass not found for specified user

-17                                           Old status not found for old condition

-18                                           New status not found for new condition

-19                                           Cannot find the specified user's employee record for relating time bomb

ret_objid                                Output                   Returns the objid of the new change request

**Examples  **

 Close change request number '10'.  Close with status "Won't fix", add some notes and other information. The close was performed by patty at the current time. Generate a time bomb (for business rule notification).  The second field version illustrates how to set the additional fields.

**Field version 1:**

**Visual Basic:**

   Dim ret_int     As Integer

Dim close_objid As Long

ret_int = fccq.close_cr("10", "Won't fix", "Some notes", _

         "Test case 43", "Release 1.2", "patty", "", _

         True, ", 0, "", 0, "", "", "", "", "", "")

 If ret_int = 0 Then

      close_objid = fccq.ret_objid

   End If

**JavaScript:**

var ret_int = fccq.close_cr("10", "Won't fix", "Some notes",

         "Test case 43", "Release 1.2", "patty", "",

         true, ", 0, "", 0, "", "", "", "", "", "");

 if (ret_int == 0){ var close_objid = fccq.ret_objid; }

**Field version 2:**

**Visual Basic:**

   Dim ret_int     As Integer

Dim close_objid As Long

ret_int = fccq.close_cr("10", "Won't fix", "Some notes", _

         "Test case 43", "Release 1.2", "patty", "", _

         True, _

     "x_close_int1", 1, "x_close_int2", 456, _

     "x_summary2", "More text", "", "", _

     "x_other_date", "1/1/99")

 If ret_int = 0 Then

      close_objid = fccq.ret_objid

   End If

**JavaScript:**

var ret_int = fccq.close_cr("10", "Won't fix", "Some notes",

         "Test case 43", "Release 1.2", "patty", "",

         true,

     "x_close_int1", 1, "x_close_int2", 456,

     "x_summary2", "More text", "", "",

     "x_other_date", "1/1/99");

 if (ret_int == 0){ var close_objid = fccq.ret_objid;

**List version:**

**Visual Basic:**

Dim close_objid As Long

   Dim ret_int     As Integer

Dim fld_list    As New FCFLCompat.FCList

Dim type_list   As New FCFLCompat.FCList

Dim val_list    As New FCFLCompat.FCList

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

ret_int = fccq.close_cr_list("10", "Won't fix", "Some notes", _

                             "Test Case 43", "Release 1.2", _

                             "patty", "", _

                             True, fld_list, type_list, val_list)

   close_objid = fccq.ret_objid

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

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

var ret_int = fccq.close_cr_list("10", "Won't fix", "Some notes",

                             "Test Case 43", "Release 1.2",

                             "patty", "",

                             true, fld_list, type_list, val_list);

   var close_objid = fccq.ret_objid;