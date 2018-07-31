fix_cr
------

fix_cr_list
-------------

Public Function fix_cr(ByVal cr_id As String, _
                       ByVal the_status As String, _
                       ByVal notes As String, _
                       ByVal user_name As String, _
                       ByVal fix_date As String, _
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

Public Function fix_cr_list(ByVal cr_id As String, _
    ByVal the_status As String, _
    ByVal notes As String, _
                            ByVal user_name As String, _
                            ByVal fix_date As String, _
                            ByVal gen_time_bombs As Boolean, _
                            Optional fld_list As Variant, _
    Optional type_list As Variant, _
                            Optional val_list As Variant) As Integer

**Description**

These APIs change the condition of a CR to "Fixed", even if it was already closed. The status specified must be defined in the fixed condition per Clarify's Policies and Customers. You may specify notes about the fix, and the user and date/time of the fix. A time bomb may be generated (for business rule notification), and additional fields (on the fix_bug record) may be specified.

#### Parameters
**Parameter Name**                **Required?**             **Description**

cr_id                                       Yes                         The change request to fix

the_status                             No                           The new status for the CR. If blank, the default status for the condition is

used

notes                                      No                           Notes for the fix

user_name                             No                           The user who fixed the change request. If left blank, the current user                                                                       performs the fix

fix_date                                  No                           The date of the fix. If blank, the current date/time is used

gen_time_bombs                 Yes                         Should a time_bomb be generated (for notifications/business rules)

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

0                                              No errors; sets objid of new fix_bug object in ret_objid (Long) global variable

-1                                             Cannot find the specified change request

-2                                             The CR is currently dispatched

-3                                             Cannot find the specified user

-4                                             Cannot find gbst_elm rank 5100 for string CHG STS:FIXED

-5                                             Cannot find the new status

-6                                             Status transition not defined in Policies and Customers

-7                                             Status transition not allowed for specified user

-15                                           Privclass not found for specified user

-16                                           Old status not found for old condition

-17                                           New status not found for new condition

-18                                           Cannot find the specified user's employee record for relating time bomb

ret_objid                                Output                   Returns the objid of the fixed cr

**Examples**

 Fix CR '2' using the default status and some notes. Gary performed the fix at 8AM on March 29, 1999. Generate a time bomb.  The second field version illustrates how to set additional fields.

**Field version 1:**

**Visual Basic:**

Dim ret_int     As Integer

   Dim fix_objid   As Long

ret_int = fccq.fix_cr("2", "", "Notes about fix", "gary", _
       "3/29/99 08:00:00", True, "", 0, "", 0, _
       "", "", "", "", "", "")

 If ret_int = 0 Then

      fix_objid = fccq.ret_objid

   End If

**JavaScript**

var int = fccq.fix_cr("2", "", "Notes about fix", "gary",

       "3/29/99 08:00:00", tue, "", 0, "", 0,

       "", "", "", "", "", "");

 if (ret_int == 0) { var fix_objid = fccq.ret_objid; }

**Field version 2:**

**Visual Basic:**

Dim ret_int     As Integer

   Dim fix_objid   As Long

ret_int = fccq.fix_cr("2", "", "Notes about fix", "gary", _
       "3/29/99 08:00:00", True, "x_fix_1", 1, _
       "x_fix_2", 2, _
       "x_summary2", "More text", "", "", _
       "x_other_Date", "1/1/99")

 If ret_int = 0 Then

      fix_objid = fccq.ret_objid

   End If

**JavaScript**

var ret_int = fccq.fix_cr("2", "", "Notes about fix", "gary",

       "3/29/99 08:00:00", true, "x_fix_1", 1,

       "x_fix_2", 2,

       "x_summary2", "More text", "", "",

       "x_other_Date", "1/1/99");

 if (ret_int == 0) { var fix_objid = fccq.ret_objid; }

**List version:**

**Visual Basic:**

   Dim fix_objid   As Long

   Dim ret_int     As Integer

Dim fld_list    As New FCFLCompat.FCList

Dim type_list   As New FCFLCompat.FCList

Dim val_list    As New FCFLCompat.FCList

fld_list.AppendItem "x_fix_int1"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(1))

fld_list.AppendItem "x_fix_int2"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(456))

fld_list.AppendItem "x_summary2"

type_list.AppendItem "String"

val_list.AppendItem "More text"

fld_list.AppendItem "x_other_date"

type_list.AppendItem "Date"

val_list.AppendItem "1/1/99"

ret_int = fccq.fix_cr_list("2", "", "Notes about fix", "gary", _
            "3/29/99 08:00:00", True, fld_list, _
                           type_list, val_list)

 If ret_int = 0 Then

      fix_objid = fccq.ret_objid

   End If

**JavaScript**:

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

fld_list.AppendItem("x_fix_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_fix_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = fccq.fix_cr_list("2", "", "Notes about fix", "gary",

            "3/29/99 08:00:00", true, fld_list,

                           type_list, val_list)

 if (ret_int == 0) { var fix_objid = fccq.ret_objid; }