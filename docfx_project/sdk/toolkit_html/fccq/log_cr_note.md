log_cr_note
-------------

log_cr_note_list
------------------

Public Function log_cr_note(ByVal cr_id As String, _

                            ByVal notes As String, _

          ByVal int_use As String, _

          ByVal log_date As String, _

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

Public Function log_cr_note_list(ByVal cr_id As String, _

                                 ByVal notes As String, _

                                 ByVal int_use As String, _

                                 ByVal log_date As String, _

                                 ByVal user_name As String, _

                                 ByVal gen_time_bombs As Boolean, _

         Optional fld_list As Variant, _

                                 Optional val_list As Variant, _

         Optional type_list As Variant) As Integer

**Description**

These APIs are used to create a note log against a CR. The APIs allow for the assigning of notes and internal use only text. The date the note is logged can be set, as well as the user who logs the note. Additional fields on the log_cr_note can also be set as well as a time bomb (for the note log), which allows notifications to be generated based on the event.

#### Parameters
**Parameter Name**                **Required?**             **Description**

cr_id                                       Yes                         The CR to create the log for

notes                                      No                           The note log text

int_use                                   No                           Internal use only information

log_date                                                No                           The date the log was created. If left blank, the current time is used

user_name                             No                           The user who created the log. If left blank, the current user performs

the logging

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

0                                              No errors; sets objid of new notes_log object in ret_objid (Long) global variable

-1                                             Cannot find the specified CR

-2                                             Cannot find the specified user

-3                                             Cannot find gbst_elm rank 1700 for string NOTES

-4                                             Cannot find the specified user's employee record for relating time bomb

ret_objid                                Output                   Returns the objid of the note

**Examples  **

 Create a note log for CR number '2'. Set the notes for the log, and indicate that it's internal use only. Have the note logged by marty on November 23, 1997 at 10PM. Don't generate a time bomb (for business rule notification).  The second field version illustrates how to set additional fields.

**Field version 1:**

**Visual Basic:**

   Dim ret_int   As Integer

Dim log_objid As Long

ret_int = fccq.log_cr_note("2", "Some notes", "Internal text", _

      "11/23/97 22:00:00", "marty", False, _

      "", 0, "", 0, "", "", "", "", "", "")

 If ret_int = 0 Then

      log_objid = fccq.ret_objid

   End If

**JavaScript:**

var ret_int = fccq.log_cr_note("2", "Some notes", "Internal text",

      "11/23/97 22:00:00", "marty", false,

      "", 0, "", 0, "", "", "", "", "", "");

 if (ret_int == 0) { var log_objid = fccq.ret_objid; }

**Field version 2:**

**Visual Basic:**

   Dim ret_int   As Integer

Dim log_objid As Long

ret_int = fccq.log_cr_note("2", "Some notes", "Internal text", _

      "11/23/97 22:00:00", "marty", False, _

                           "x_close_int1", 1, "x_close_int2", 456, _

                           "x_summary2", "More text", "", "", _

      "x_other_date", "1/1/99")

 If ret_int = 0 Then

      log_objid = fccq.ret_objid

   End If

**JavaScript:**

var ret_int = fccq.log_cr_note("2", "Some notes", "Internal text",

      "11/23/97 22:00:00", "marty", false,

                           "x_close_int1", 1, "x_close_int2", 456,

                           "x_summary2", "More text", "", "",

      "x_other_date", "1/1/99");

 if (ret_int == 0) { var log_objid = fccq.ret_objid; }

**List version:**

**Visual Basic:**

Dim log_objid As Long

Dim ret_int   As Integer

Dim fld_list  As New FCFLCompat.FCList

Dim type_list As New FCFLCompat.FCList

Dim val_list  As New FCFLCompat.FCList

fld_list.AppendItem "x_log_int1"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(1))

fld_list.AppendItem "x_log_int2"

type_list.AppendItem "Long"

val_list.AppendItem Trim(Str$(456))

fld_list.AppendItem "x_summary2"

type_list.AppendItem "String"

val_list.AppendItem "More text"

fld_list.AppendItem "x_other_date"

type_list.AppendItem "Date"

val_list.AppendItem "1/1/99"

ret_int = fccq.log_cr_note_list("2", "Some notes", _

                                "Internal text", _

           "11/23/97 22:00:00", "marty", False, _

            fld_list, type_list, val_list)

 If ret_int = 0 Then

      log_objid = fccq.ret_objid

   End If

**JavaScript:**

var fld_list  = Server.CreateObject("FCFLCompat.FCList");

var type_list = Server.CreateObject("FCFLCompat.FCList");

var val_list  = Server.CreateObject("FCFLCompat.FCList");

fld_list.AppendItem("x_log_int1");

type_list.AppendItem("Long");

val_list.AppendItem("1");

fld_list.AppendItem("x_log_int2");

type_list.AppendItem("Long");

val_list.AppendItem("456");

fld_list.AppendItem("x_summary2");

type_list.AppendItem("String");

val_list.AppendItem("More text");

fld_list.AppendItem("x_other_date");

type_list.AppendItem("Date");

val_list.AppendItem("1/1/99");

var ret_int = fccq.log_cr_note_list("2", "Some notes",

                                "Internal text",

           "11/23/97 22:00:00", "marty", False,

            fld_list, type_list, val_list);

 if (ret_int == 0) { var log_objid = fccq.ret_objid; }