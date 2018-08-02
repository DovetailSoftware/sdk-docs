log_subcase_email
-------------------

log_subcase_ email_list
-------------------------

```
Public Function log_subcase_email(ByVal subcase_id As String, _
                    ByVal action_type As String, _
                    ByVal log_date As String, ByVal message As String, _
                    ByVal recipient As String, ByVal cc_list As String, _
                    ByVal user_name As String, ByVal new_stat As String, _
                    ByVal cmit_title As String, ByVal cmit_notes As String, _                                     
                    ByVal cmit_due As String, ByVal cmit_prior As Long, _
                    ByVal cmit_to As Boolean, ByVal cmit_action_type As String, _
                    ByVal cmit_contact_objid As Long, _
					          ByVal gen_time_bombs As Boolean, _
                    ByVal send_email As Boolean, _
                    ByVal int_fld1 As String, ByVal int_val1 As Long, _
                    ByVal int_fld2 As String, ByVal int_val2 As Long, _
                    ByVal str_fld1 As String, ByVal str_val1 As String, _
                    ByVal str_fld2 As String, ByVal str_val2 As String, _
                    ByVal date_fld1 As String, _
                    ByVal date_val1 As String) As Integer
```

```
Public Function log_subcase_email_list(ByVal subcase_id As String, _
                    ByVal action_type As String, _
                    ByVal log_date As String, ByVal message As String, _
                    ByVal recipient As String, ByVal cc_list As String, _
                    ByVal user_name As String, ByVal new_stat As String, _
                    ByVal cmit_title As String, ByVal cmit_notes As String, _
                    ByVal cmit_due As String, ByVal cmit_prior As Long, _
                    ByVal cmit_to As Boolean, ByVal cmit_action_type As String, _
                    ByVal cmit_contact_objid As Long, _
                    ByVal gen_time_bombs As Boolean, _
                    ByVal send_email As Boolean, Optional fld_list As Variant, _
                    Optional type_list As Variant, _
                    Optional val_list As Variant) As Integer
```

#### Description

These APIs are used to create an email log against a subcase. The APIs allow for the assigning of the email message, the email recipients, a cc list, and an action type. A new subcase status can be set with this API. Additional fields can also be set as well as a time bomb (for the phone log), which allows notifications to be generated based on the event. You may also specify the user who created/sent the email.

You have the option, with these APIs, of sending the email yourself, or of having Clarify send it for you. If you set the _send_email_ argument to True, the API will add a row to Clarify that will cause the rule manager (which must be running) to send the email. This is just like logging it via the _Log Email_ GUI in Clarify. The downside of this is that rulemanager sends the email from the server, which means that the recipient(s) cannot hit "reply", and have the email come back to you.

If you want to send the email yourself, just set the argument to False. In this case, the API logs the email, but does not send it.

Optionally, you can also set a commitment with the note log. If you wish to set a commitment, you **MUST** set the commitment due date (cmit_due) and the commitement title (cmit_title). The commitment title usually comes from the user-defined list "COMMITMENT", but it does not have to for this API. Any string is acceptable. The other commitment fields are optional. You can add notes to the commitement , and a prior warning. Also, you must set if the commitment is to the contact or by the contact. The contact for the case is always used for the commitment contact.

The objid of the created log is returned in the FCCS object variable _ret_objid_.

The objid of the commitment log record is returned in the FCCS object variable _ret_objid2_.

The objid of the status change record is returned in the FCCS object variable _ret_objid3_.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| subcase_id | Yes | The subcase to create the log for |
| action_type | No | The email log action type code value. If left blank, default code is used |
| log_date | No | The date the log was created. If left blank, the current time is used |
| message | No | The email message |
| recipient | No | List of email addresses the email is sent to |
| cc_list | No | List of cc recipients for the email |
| user_name | No | The user who created the log. If left blank, the current user performs the logging |
| new_stat | No | New status for the subcase. If blank (""), no status change is performed |
| cmit_title | No | Title of the commitment. If blank, no commitment is generated |
| cmit_notes | No | If generating a commitment, optional notes for the commitment (max length of 255) |
| cmit_due | No | When is the commitment due. If blank, no commitment is generated |
| cmit_prior | No | How long (in seconds) before the commitment is due should a warning business rule notification be fired. If set to 0, no warning is generated |
| cmit_to | Yes | Is the commitment made to the customer (=True), or by the customer (=False). If no commitment is to be generated, this value is ignored |
| cmit_action_type | No | The commitment log action type value. If left blank, default code is used |
| cmit_contact_objid | No | The objid of the contact for the commitment. If set to 0, the contact for the case is used. |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules). |
| send_email | Yes | Should a time_bomb be added to Clarify that will cause rule manager (if running) to send the email |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified subcase |
| -2 | Cannot find the specified user |
| -3 | Cannot find the EMAIL LOG activity string |
| -4 | Cannot find the employee record for the specified user |
| -5 | Cannot find the COM TEMPLATE for sending email |
| -6 | The specified action type is not valid |
| -7 | The supplied status is invalid for the current condition |
| -8 | A commitment is to be created, but the title is blank |
| -9 | The prior warning is negative |
| -10 | The commitment due date is before the log creation date |
| -11 | Cannot find the COMMIT activity string |
| -12 | Could not find the com_tmplte for WARNING |
| -13 | Could not find the com_tmplte for COMMITMENT |
| -14 | Cannot find the specified commitment log action type |
| -15 | Cannot find the specified contact |

#### Examples

Create an email to send to 'joe@fred.com' for subcase C154-1. Set the message for the log, and no other information. Do not send the email, just log it. Generate a time bomb.

**Field version:**

**JavaScript:**
```
   var ret_int = fccs.log_subcase_email("C154-1", "", "", "Email message",
      "joe@fred.com", "", "", "", "", "", "", 0, true, "", 0,
	  true, false, "", 0, "", 0, "", "", "", "", "", "");
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.log_subcase_email("C154-1", "", "", "Email message", _
              "joe@fred.com", "", "", "", "", "", "", 0, True, "", 0,
              True, False, "", 0, "", 0, "", "", "", "", "", "")
```

**List version:**

**JavaScript:**
```
var ret_int = fccs.log_subcase_email_list("C154-1", "", "", "Email message",
         "joe@fred.com", "", "", "", "", "", "", 0, true, "", 0, true, false);
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.log_subcase_email_list("C154-1", "", "", "Email message", _
      "joe@fred.com", "", "", "", "", "", "", 0, True, "", 0, True, False)
```

Send an email for subcase '2-2' with a recieipient, and a list of "cc" recipients. Send as internal email. Send from "sam", on November 23, 1997 at 10PM. Change the status to "Working". Also, create a commitment for January 1, 1999 at 8:00AM, with a title, notes, and a prior warning of 1 hour (with the commitment being made by the contact). Generate some additional fields, but do not generate a time bomb. Send the email.

**Field version:**

**JavaScript:**
```
var ret_int = fccs.log_subcase_email("2-2", "Internal Email",
      "11/23/97 22:00:00", "Email message", "joe@fred.com",
      "mary@fred.com, cathy@fred.com", "sam", "Working",
      "Commit title", "Commit notes", "1/1/1999 8:00:00",
      3600, false, "", 0, false, true,
      "x_close_int1", 1, "x_close_int2", 456,
      "x_summary2", "More text", "", "", "x_other_date", "1/1/99");            
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.log_subcase_email("2-2", "Internal Email", _
           "11/23/97 22:00:00", "Email message", "joe@fred.com", _
           "mary@fred.com, cathy@fred.com", "sam", "Working", _
           "Commit title", "Commit notes", "1/1/1999 8:00:00", _
           3600, False, "", 0, False, True, _
           "x_close_int1", 1, "x_close_int2", 456, _
           "x_summary2", "More text", "", "", "x_other_date", "1/1/99")        
```

**List version:**

**JavaScript:**
```
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

var ret_int = fccs.log_subcase_email("2-2", "Internal Email",
           "11/23/97 22:00:00", "Email message", "joe@fred.com",
           "mary@fred.com, cathy@fred.com", "sam", "Working",
           "Commit title", "Commit notes", "1/1/1999 8:00:00",
           3600, false, "", 0, false, true, fld_list, type_list, val_list);
```

**Visual Basic:**
```
Dim ret_int As Integer
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

ret_int = fccs.log_subcase_email("2-2", "Internal Email", _
          "11/23/97 22:00:00", "Email message", "joe@fred.com", _
          "mary@fred.com, cathy@fred.com", "sam", "Working", _
          "Commit title", "Commit notes", "1/1/1999 8:00:00", _
          3600, False, "", 0, False, True, fld_list, type_list, val_list)
```
