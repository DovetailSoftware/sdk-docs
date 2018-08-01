create_expense_log
--------------------

```
Public Function create_expense_log(ByVal onsite_objid As Long, _
                  ByVal id_num As String, ByVal creation_time As String, _
                  ByVal notes As String, ByVal perf_by As String, _
                  ByVal user_name As String, ByVal expense_type As String, _
                  ByVal quantity As Double, ByVal the_rate As Double, _
                  ByVal billable As Long, ByVal bill_to As String, _
                  ByVal resolution As String) As Integer
```

#### Description

This API allows creation of an expense log that is related to an onsite log. The OBJID of the onsite log or a case/subcase id must be supplied (but not both), and the other parameters are all optional. If you do not specify a billing rate, the employee's labor_rate field will be used.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| onsite_objid | Yes | The OBJID of the onsite log this expense log is related to |
| id_num | No | The Id number for the Case if no onsite log is specified |
| creation_time | No | The time this expense log is created. If left blank, it will be the current time |
| notes | No | The note text for this expense log |
| perf_by | No | The user  that is performing the actions associated to the onsite log |
| user_name | No | The user who is creating the onsite log. If left blank, the current user performs the create |
| expense_type | No | Value for the type of expense, from the EXPENSE_TYPE list in Policies and Customers. If left blank, the default value is used |
| quantity | No | The number of units that are being applied to the onsite log |
| the_rate | No | Billing rate (per unit). If no rate specified, the employee's labor_rate is used |
| billable | No | Indicates if this expense is billable |
| bill_to | No | Indicates who this expense log will be billed to, from the BILL_TO_EXPENSE list in Policies and Customers |
| resolution | No | Value from the Resolution Code list |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Could not find specified EXPENSE_TYPE |
| -2 | Could not find specified BILL_TO_EXPENSE |
| -3 | Cannot find user in database |
| -4 | Cannot find employee record for user in database |
| -5 | Cannot find performing user in database |
| -6 | Could not find specified RESOLUTION |
| -7 | Cannot find employee record for performing user in database |
| -8 | Cannot find the 'T & E log' activity string with rank = 1800 |
| -9 | Cannot find case or subcase related to this expense log |
| -10 | Cannot find specified onsite_log record |
| -11 | Either Case Id or an onsite log objid must be specified |
| ret_objid | The objid of the new expense log object is returned by this parameter. |
| ret_objid2 | The objid of the new onsite object is returned by this parameter. |

#### Examples

Create a new expense log related to onsite log 268435499. The creation time is 10:30 am on September 11, 1998. A sample note is passed, and the resolution will be "Completed". The user will default, and the performing user will be set to "db". This default expense type is billable to the "Customer". Once created, the new objid will be placed in the el_objid variable.

**Visual Basic:**

   Dim ret_int  As Integer
```

Dim el_objid As Long

ret_int = fcfo.create_expense_log(268435499, "", "09/11/98 10:30:00", _
                                  "expense log note", "db", "", "", 1, _
       4.5, 1, "Customer", "Completed")

   If ret_int = 0 Then

     el_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.create_expense_log(268435499, "", "09/11/98 10:30:00",

                                   "expense log note", "db", "", "", 1,

        4.5, 1, "Customer", "Completed");

if (ret_int == 0){ var el_objid = fcfo.ret_objid; }

 Create a new expense log related to onsite log 268435463. The quantity is 1.5 units (at 3.33 each), non-billable. All other parameters will default.

**Visual Basic:**

   Dim ret_int  As Integer
```

Dim el_objid As Long

ret_int = fcfo.create_expense_log(268435463, "", "", "", "", "", _
                                   "", 1.5, 3.33, 0, "", "")

   If ret_int = 0 Then

     el_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.create_expense_log(268435463, "", "", "", "", "",

                                   "", 1.5, 3.33, 0, "", "");

if (ret_int == 0){ var el_objid = fcfo.ret_objid; }