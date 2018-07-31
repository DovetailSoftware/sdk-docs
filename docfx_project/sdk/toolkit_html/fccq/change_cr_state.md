change_cr_state
-----------------

Public Function change_cr_state(ByVal cr_id As String, _
                ByVal new_status As String, new_condition As String, _
                ByVal change_date As String, _
                ByVal notes As String, ByVal user_name As String, _
                ByVal gen_time_bombs As Boolean, _
                ByVal wipbin As String, ByVal test_case As String, _
                ByVal int_release As String, ByVal master_cr As String, _
                ByVal int_fld1 As String, ByVal int_val1 As Long, _
                ByVal int_fld2 As String, ByVal int_val2 As Long, _
                ByVal str_fld1 As String, ByVal str_val1 As String, _
                ByVal str_fld2 As String, ByVal str_val2 As String, _
                ByVal date_fld1 As String, ByVal date_val1 As String) As Integer

**Description**

This API causes the specified change request to have its status and/or condition changed. This function is basically a wrapper function for multiple APIs (change_cr_status, fix_cr, close_cr, fix_failed, reopen_cr, and duplicate_cr).  Depending on the current condition of the CR and the new_condition parameter, the appropriate API will be called.

| Current CR Condition | new_condition | Which API is called |
|:--- |:--- |:--- |
| Any | Same as Current CR condition | change_cr_status |
| Any | CR Fixed | fix_cr |
| Any | CR Closed | close_cr |
| Any | CR Closed/Duplicate | duplicate_cr |
| CR Fixed | CR Open | fix_failed |
| CR Closed | CR Open | reopen_cr |
| CR Closed/Duplicate | CR Open | reopen_cr |

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The change request Id to change status for |
| new_status | No | The new status for the change request. If blank, the default status is used |
| new_condition | Yes | The new condition for the change request |
| change_date | No | When was the CR status changed. If this parameter is left blank, the CR is status changed at the current time |
| notes | No | Notes for the status change |
| user_name | No | The user who changed the status. If left blank, the current user performs the change status |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |
| wipbin | No | The WIPBin to place the change request in. If left blank, the default WIPBin is used (for reopen_cr) |
| test_case | No | Test case string for closure (for close_cr and fix_failed) |
| int_release | No | Release information for the closure (for close_cr and fix_failed) |
| master_cr | No | The ID of the master (parent) CR (for duplicate_cr) |
| int_fld1, int_fld2<br>str_fld1, str_fld2<br>date_fld1 | No | Names of additional fields to write |
| int_val1, int_val2<br>str_val1, str_val2<br>date_val1 | No | Values for the additional fields. These values are only used if the corresponding field name field is filled with a valid field name |

**Returns**

All return codes are defined by which API is called, as this API is simply a wrapper.

**Examples**

Change status for change request number '10' to a new status and condition. The change status is performed by the current user and is changed at the current time. Generate a time bomb.

**JavaScript:**

var ret_int = FCCQ.change_cr_state("10",strNewStatus,strNewCondition,"", 
             strReason,"",true, "",test_case,int_release,master_cr,
             "",0,"",0,"","","","","","")