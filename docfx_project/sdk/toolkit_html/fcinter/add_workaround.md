add_workaround
--------------

add_workaround_list
---------------------

```
Public Function add_workaround(ByVal soln_id As String, _
                               ByVal soln_objid As Long, _
                               ByVal workaround As String, _
                               ByVal is_public As Boolean, _
                               ByVal create_date As String, _
                               ByVal res_code As String, _ 
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
```

```
Public Function add_workaround_list(ByVal soln_id As String, _
                                    ByVal soln_objid As Long, _
                                    ByVal workaround As String, _
                                    ByVal is_public As Boolean, _
                                    ByVal create_date As String, _
                                    ByVal res_code As String, _
                                    Optional fld_list As Variant, _
                                    Optional type_list As Variant, _
                                    Optional val_list As Variant) As Integer
```

#### Description

These APIs add a new workaround to an existing solution. You must specify the solution ID or the solution's objid, the workaround, if it is public, the workaround creation date, and the resolution code. You may specify additional fields for the workaround, if needed.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| soln_id | No | ID of solution to link workaround to |
| soln_objid | No | Objid of solution to link workaround to |
| workaround | No | The text of the workaround |
| is_public | Yes | Is the workaround public, or not? Used by Clarify Web applications |
| create_date | No | When was workaround created? If blank, current date/time is used |
| res_code | No | Resolution code for the workaround. If left blank, default value is used from the list |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |
| fld_list | Yes | List of additional field names to write. List must be present, but does not need to have any items in the list |
| type_list | Yes | List of additional field data types to write. List must be present, but does not need to have any items in the list |
| val_list | Yes | List of additional field values to write. List must be present, but does not need to have any items in the list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | No solution supplied |
| -2 | Supplied both a soln ID and the objid |
| -3 | Cannot find the specified solution |
| -4 | Cannot find the resolution code |
| ret_objid | Output - Returns the objid of the newly workaround |

#### Examples

Create a new workaround for solution '44' with workaround (public, with default res code). The create was made on November 11, 1998 at 11:00 AM.

**Visual Basic:**

Dim ret_int          As Integer
```

Dim workaround_objid As Long

ret_int = fcinter.add_workaround("44", 0, _
                                 "No current workaround", true, _
                                 "11/11/1998 11:00:00", "", "", 0, _
                                 "", 0, "", "", "", "", "", "")
  
   If ret_int = 0 Then
  
      workaround_objid = fcinter.ret_objid
 End If
 
**Javascript:**

var ret_int = fcinter.add_workaround("44", 0,
  
   "No current workaround", true,
  
                                 "11/11/1998 11:00:00", "", "", 0,

                                 "", 0, "", "", "", "", "", "");

if (ret_int == 0){ var workaround_objid = fcinter.ret_objid; }