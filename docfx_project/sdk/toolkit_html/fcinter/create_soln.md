create_soln
-----------

create_soln_list
------------------

```
Public Function create_soln(ByVal the_title As String, _
                            ByVal description As String, _
                            ByVal workaround As String, _
                            ByVal is_public As Boolean, _
                            ByVal res_code As String, _
                            ByVal queue_name As String, _
                            ByVal create_date As String, _
                            ByVal user_name As String, _
                            ByVal create_time_bomb As Boolean, _
                            ByVal int_fld1 As String, ByVal int_val1 As Long, _
                            ByVal int_fld2 As String, ByVal int_val2 As Long, _
                            ByVal str_fld1 As String, ByVal str_val1 As String, _
                            ByVal str_fld2 As String, ByVal str_val2 As String, _
                            ByVal date_fld1 As String, _
                            ByVal date_val1 As String) As Integer
```

```
Public Function create_soln_list(ByVal the_title As String, _
                                 ByVal description As String, _
                                 ByVal workaround As String, _
                                 ByVal is_public As Boolean, _
                                 ByVal res_code As String, _
                                 ByVal queue_name As String, _
                                 ByVal create_date As String, _
                                 ByVal user_name As String, _
                                 ByVal create_time_bomb As Boolean, _
                                 Optional fld_list As Variant, _
                                 Optional type_list As Variant, _
                                 Optional val_list As Variant) As Integer
```

#### Description

These APIs create a solution record (and one workaround). You may supply the title and description for the solution. The workaround, public indicator, and resolution code are used for the one workaround that is created. You may optionally dispatch the solution. If a queue name is specified, the solution is dispatched to that queue. Otherwise it is left in the default WIPBIN of the owner.

You may specify a creation date, and the user who created the solution. You may also set additional fields in the probdesc object. Finally, you may specify if a time bomb (for business rules) is generated, or not.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| the_title | No | Title of the solution |
| description | No | The problem description of the solution |
| workaround | No | The text of the 1st workaround for the solution. Highly recommended that this have text |
| is_public | Yes | Is the workaround public, or not? Used by Clarify Web applications |
| res_code | No | Resolution code for the workaround. If left blank, default value is used from the list |
| queue_name | No | Name of the queue to dispatch to. If blank, solution is not dispatched |
| create_date | No | When was solution created? If blank, current date/time is used |
| user_name | No | Who created the solution? If blank, current user is used |
| create_time_bomb | Yes | Should a time bomb be added to the system for business rule firing? |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified user |
| -2 | Cannot find the activity string for CREATE rank equal to 600 |
| -3 | Cannot find the specified resolution code |
| -4 | Cannot find the activity string for DISPATCH rank equal to 900 |
| -5 | Could not find the specified queue name |
| -6 | Cannot find the specified user's employee record for relating time bomb |
| ret_objid | Output - Returns the objid of the new solution record |
| ret_objid2 | Output - Returns the objid of the new work-around record |

#### Examples

Create a new solution with title, description, workaround (public, with default res code). Dispatch the solution to the "High" queue. Generate time bombs, and the create was made by Joe on November 11, 1998 at 11:00 AM.

**Visual Basic:**
```
Dim ret_int As Integer
Dim soln_objid As Long
Dim work_objid As Long

ret_int = fcinter.create_soln("The Solution","There is a problem", _
                              "No current workaround", true, "", "High",_
                              "11/11/1998 11:00:00", "joe", true ,"", 0, _
                              "", 0, "", "", "", "", "", "")

 If ret_int = 0 Then
      soln_objid = fcinter.ret_objid
      work_objid = fcinter.ret_objid2
 End If
```

**JavaScript:**
```
var ret_int = fcinter.create_soln("The Solution","There is a problem",
                              "No current workaround", true, "", "High",
                              "11/11/1998 11:00:00", "joe", true ,"", 0,
                              "", 0, "", "", "", "", "", "");

 if (ret_int == 0){
	var soln_objid = fcinter.ret_objid;
    var work_objid = fcinter.ret_objid2;
 }
``` 