log_case_note
---------------

log_case_note_list
--------------------

```
Public Function log_case_note(ByVal case_id As String, _
                    ByVal action_type As String, ByVal note_str As String, _
                    ByVal int_use As String, ByVal log_date As String, _
                    ByVal user_name As String, ByVal new_stat As String, _
                    ByVal cmit_title As String, ByVal cmit_notes As String, _
                    ByVal cmit_due As String, ByVal cmit_prior As Long, _
                    ByVal cmit_to As Boolean, ByVal gen_time_bombs As Boolean, _
                    ByVal int_fld1 As String, ByVal int_val1 As Long, _
                    ByVal int_fld2 As String, ByVal int_val2 As Long, _
                    ByVal str_fld1 As String, ByVal str_val1 As String, _
                    ByVal str_fld2 As String, ByVal str_val2 As String, _
                    ByVal date_fld1 As String, _
                    ByVal date_val1 As String) As Integer
```

```
Public Function log_case_note_list(ByVal case_id As String, _
                    ByVal action_type As String, ByVal note_str As String, _
                    ByVal int_use As String, ByVal log_date As String, _
                    ByVal user_name As String, ByVal new_stat As String, _
                    ByVal cmit_title As String, ByVal cmit_notes As String, _
                    ByVal cmit_due As String, ByVal cmit_prior As Long, _
                    ByVal cmit_to As Boolean, ByVal gen_time_bombs As Boolean, _
                    Optional fld_list As Variant, _
                    Optional type_list As Variant, _                   
                    Optional val_list As Variant) As Integer
```

#### Description

These APIs are used to create a note log against a case. The APIs allow for the assigning of notes, internal use only text, and an action type. The date the note is logged can be set, as well as the user who logs the note. Also, a new status can be set for the case. Additional fields can also be set as well as a time bomb (for the note log), which allows notifications to be generated based on the event.

Optionally, you can also set a commitment with the note log. If you wish to set a commitment, you **MUST** set the commitment due date (cmit_due) and the commitement title (cmit_title). The commitment title usually comes from the user-defined list "COMMITMENT", but it does not have to for this API. Any string is acceptable. The other commitment fields are optional. You can add notes to the commitement , and a prior warning. Also, you must set if the commitment is to the contact or by the contact. The contact for the case is always used for the commitment contact.

The objid of the created log is returned in the FCCS object variable _ret_objid_.

The objid of the commitment log record is returned in the FCCS object variable _ret_objid2_.

The objid of the status change record is returned in the FCCS object variable _ret_objid3_.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The case to create the log for |
| action_type | No | The note log action type code value. If left blank, default code is used |
| notes | No | The note log text |
| int_use | No | Internal use only information |
| log_date | No | The date the log was created. If left blank, the current time is used |
| user_name | No | The user who created the log. If left blank, the current user performs the logging |
| new_stat | No | New status for the case. If blank (""), no status change is performed |
| cmit_title | No | Title of the commitment. If blank, no commitment is generated |
| cmit_notes | No | If generating a commitment, optional notes for the commitment (max length of 255) |
| cmit_due | No | When is the commitment due. If blank, no commitment is generated |
| cmit_prior | No | How long (in seconds) before the commitment is due should a warning business rule notification be fired. If set to 0, no warning is generated |
| cmit_to | Yes | Is the commitment made to the customer (=True), or by the customer (=False). If no commitment is to be generated, this value is ignored |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified case |
| -2 | Cannot find the specified user |
| -3 | Cannot find the NOTES activity string |
| -4 | Cannot find the notes log action type string |
| -5 | Cannot find employee record for specified user |
| -6 | The supplied status is invalid for the current condition |
| -7 | A commitment is to be created, but the title is blank |
| -8 | The prior warning is negative |
| -9 | The commitment due date is before the log creation date |
| -10 | Cannot find the COMMIT activity string |
| -11 | Could not find the com_tmplte for WARNING |
| -12 | Could not find the com_tmplte for COMMITMENT |

#### Examples

 Create a note log for case number 'C154'. Set the notes for the log, and no other information. Generate a time bomb.

**Field version:**

**JavaScript:**

var ret_int = fccs.log_case_note("C154", "", "Some notes", "", "", "", "",

                        "", "", "", 0, true, true, "", 0, "", 0, "",

                        "", "", "", "", "");

**Visual Basic:**

   Dim ret_int   As Integer
```

ret_int = fccs.log_case_note("C154", "", "Some notes", "", "", "", "", _
                        "", "", "", 0, True, True, _
                        "", 0, "", 0, "", "", "", "", "", "")

**List version:**

**JavaScript:**

var ret_int = fccs.log_case_note_list("C154", "", "Some notes", "", "", "",

                                      "", "", "", "", 0, true, true)

**Visual Basic:**

   Dim ret_int     As Integer
```

ret_int = fccs.log_case_note_list("C154", "", "Some notes", "", "", "", _
                                  "", "", "", "", 0, True, True)

 Create a note log for case number '2'. Set action code of 'Manager Note', some note text, and internal use only text. Have the note logged by marty on November 23, 1997 at 10PM. Change the status to "Working". Also, create a commitment for January 1, 1999 at 8:00AM, with a title, notes, and a prior warning of 1 hour (with the commitment being made by the contact). Generate some additional fields, but do not generate a time bomb.

**Field version:**

**JavaScript:**

var ret_int = fccs.log_case_note("2", "Manager Note", "Some notes",

          "Internal text", "11/23/97 22:00:00", "marty",

          "Working", "Commit title", "Commit notes", "1/1/1999 8:00:00",

          3600, false, true, "x_close_int1", 1, "x_close_int2", 456,

          "x_summary2", "More text", "", "", "x_other_date",

          "1/1/99");

**Visual Basic:**

   Dim ret_int   As Integer
```

ret_int = fccs.log_case_note("2", "Manager Note", "Some notes", _
          "Internal text", "11/23/97 22:00:00", "marty", _
          "Working", "Commit title", "Commit notes", "1/1/1999 8:00:00", _
          3600, False, True, "x_close_int1", 1, "x_close_int2", 456, _
          "x_summary2", "More text", "", "", "x_other_date", _
          "1/1/99")

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

var ret_int = fccs.log_case_note_list("2", "Manager Note", "Some notes",

          "Internal text", "11/23/97 22:00:00", "marty",

          "Working", "Commit title", "Commit notes", "1/1/1999 8:00:00",

          3600, false, true, fld_list, type_list, val_list);

**Visual Basic:**

   Dim ret_int     As Integer
```

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

ret_int = fccs.log_case_note_list("2", "Manager Note", "Some notes", _
          "Internal text", "11/23/97 22:00:00", "marty", _
          "Working", "Commit title", "Commit notes", "1/1/1999 8:00:00", _
          3600, False, True, fld_list, type_list, val_list)