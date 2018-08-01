log_cr_email
--------------

log_cr_email_list
-------------------

```
Public Function log_cr_email(ByVal cr_id As String, _
                          ByVal log_date As String, ByVal message As String, _
                          ByVal recipient As String, ByVal cc_list As String, _
                          ByVal user_name As String, _
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
Public Function log_cr_email_list(ByVal cr_id As String, _
                                  ByVal log_date As String, _
								  ByVal message As String, _
                                  ByVal recipient As String, _
								  ByVal cc_list As String, _
                                  ByVal user_name As String, _
								  ByVal gen_time_bombs As Boolean, _
                                  ByVal send_email As Boolean, _
                                  Optional fld_list As Variant, _
                                  Optional type_list As Variant, _
                                  Optional val_list As Variant) As Integer
```

#### Description

These APIs are used to create an email log (email out) against a CR. The date the email is logged can be set, as well as the user who logs the email. Additional fields on the log_email record can also be set as well as a time bomb (for the email_log), which allows notifications to be generated based on the event. In addition, the proper time_bomb can be optionally created that will cause rulemanager to send out the email.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The CR to create the log for |
| log_date | No | The date the log was created. If left blank, the current time is used |
| message | No | The text (body) of the email message |
| recipient | No | The email address of the intended recipient |
| cc_list | No | A list of additional recipients to be included on the CC list |
| user_name | No | The user who created the log. If left blank, the current user performs the logging |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |
| send_email | Yes | Should rulemanager send this email |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors; sets objid of new email_log object in ret_objid (Long) global variable |
| -1 | Cannot find the specified CR |
| -2 | Cannot find the specified user |
| -3 | Cannot find gbst_elm rank 3400 for string EMAIL OUT |
| -4 | Cannot find the specified user's employee record for relating time bomb |
| -5 | Cannot find the com_tmplte with a title of "send_email_about_bug" |
| ret_objid | Output - Returns the objid of the email_log |

#### Examples

Create an email_log for CR number '2'. Set the message for the log. Set the recipient to be joe@company.com, and also CC the email to mary@company.com and sally@company.com Have the email logged by marty on November 23, 1997 at 10PM. Generate a time bomb (for business rule notification), and also generate a time_bomb so that rulemanager will send out the email. The second field version illustrates how to set additional fields.

**Field version 1:**

**Visual Basic:**
``` 
Dim ret_int As Integer
Dim log_objid As Long

ret_int = fccq.log_cr_email("2", "11/23/97 22:00:00",_
	"This is an outgoing email", _ 
	"joe@company.com", _
	"mary@company.com,sally@company.com", _
    "marty", True, True, _
    "", 0, "", 0, "", "", "", "", "", "")

 If ret_int = 0 Then
   log_objid = fccq.ret_objid
 End If 
```

**JavaScript:**
```
var ret_int = fccq.log_cr_email("2", "11/23/97 22:00:00",_
	"This is an outgoing email", _
	"joe@company.com", _
	"mary@company.com,sally@company.com", _
    "marty", True, True, _ 
    "", 0, "", 0, "", "", "", "", "", "");
 
 if (ret_int == 0) { var log_objid = fccq.ret_objid; }
```

**Field version 2:**

**Visual Basic:**
``` 
Dim ret_int As Integer
Dim log_objid As Long

ret_int = fccq.log_cr_email("2", "11/23/97 22:00:00",_
	"This is an outgoing email", _ 
	"joe@company.com", _
	"mary@company.com,sally@company.com", _
    "marty", True, True, _
    "x_int1", 1, "x_int2", 456, _
    "x_summary2", "More text", "", "", _
    "x_other_date", "1/1/99")

 If ret_int = 0 Then
   log_objid = fccq.ret_objid
 End If 
```

**JavaScript:**
```
var ret_int = fccq.log_cr_email("2", "11/23/97 22:00:00",_
	"This is an outgoing email", _
	"joe@company.com", _
	"mary@company.com,sally@company.com", _
    "marty", True, True, _
    "x_int1", 1, "x_int2", 456,
    "x_summary2", "More text", "", "",
    "x_other_date", "1/1/99");

 if (ret_int == 0) { var log_objid = fccq.ret_objid; }
```

**List version:**

**Visual Basic:**
```
Dim log_objid As Long
Dim ret_int As Integer
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

ret_int = fccq.log_cr_email_list("2", "11/23/97 22:00:00",_
	"This is an outgoing email", _
	"joe@company.com", _
	"mary@company.com,sally@company.com", _
    "marty", True, True, _
    fld_list, type_list, val_list)

 If ret_int = 0 Then
   log_objid = fccq.ret_objid
 End If 
```

**JavaScript:**
```
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

var ret_int = fccq.log_cr_email_list("2", "11/23/97 22:00:00",_
	"This is an outgoing email", _
	"joe@company.com", _
	"mary@company.com,sally@company.com", _
    "marty", True, True, _
    fld_list, type_list, val_list);

 if (ret_int == 0) { var log_objid = fccq.ret_objid; }
``` 