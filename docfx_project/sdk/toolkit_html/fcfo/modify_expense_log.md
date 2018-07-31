modify_expense_log
--------------------

Public Function modify_expense_log(ByVal expense_log_objid As Long, _

                                   ByVal creation_time As String, _

                                   ByVal perf_by As String, _

                                   ByVal notes As String, _

                                   ByVal user_name As String, _

                                   ByVal expense_type As String, _

                                   ByVal quantity As Double, _

                                   ByVal the_rate As Double, _

                                   ByVal billable As Long, _

                                   ByVal bill_to As String, _

                                   ByVal resolution As String) As Integer

**Description**

This API modifies an existing expense log record in the Clarify database. You must pass in a valid expense log objid (which is returned by the _create_expsense_log_ API). You can specify the a variety of data items for the expense, including who performed the expense, notes, and a quantity and rate for the expense. If you do not specify a value for one of the arguments, the value in the existing record is not updated.

#### Parameters
**Parameter Name**                **Required?**             **Description**

expense_log_objid              Yes                         The OBJID of the expense log to modify

creation_time                        No                           When is the log modified? If left blank, it will be modified at the current

                                                                                time. Used for time_bomb creation.

perf_by                                  No                           The user who modified the time log. If left blank, the current user

performs the modify

notes                                      No                           The updated notes for the onsite log

user_name                             No                           The user who is recording the modification of the expense log. If left blank, the

current user records the modify

expense_type                       No                           Value from the EXPENSE_TYPE code list

quantity                                 Yes                         Quantity for the expense log

the_rate                                 Yes                         Rate for the expense log

billable                                   No                           Indicates if this expense is billable

bill_to                                     No                           Indicates who this expense log will be billed to, from the BILL_TO_EXPENSE

                                                                                list in Policies and Customers

resolution                              No                           Value from the RESOLUTION_CODE list

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Could not find specified EXPENSE_TYPE

-2                                             Could not find specified BILL_TO_TIME

-3                                             Cannot find specified user in database

-4                                             Cannot find employee record for specified user in database

-5                                             Cannot find performing user in database

-6                                             Could not find case or subcase for expense log record

-7                                             Could not find specified WORK_CENTER

-8                                             Could not find specified RESOLUTION_CODE

-9                                             Could not find the specified expense log record

-10                                           Cannot find employee record for performing user in database

-11                                           Cannot find the 'T & E Log' activity string with rank = 8700

**Example**

 Update an existing expense log (268435600). Log is created at the current time, is performed by "joe", and is logged by "fred". Add some notes, and set the quantity to 6 and the rate to 3.45. Use the default expense type. Make it not billable, and don't set the bill_to string. Use the default resolution code.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_expense_log(268435600, "joe", "Some notes here", "fred", _

     "", 6, 3.45, 0, "", "")

**JavaScript:**

var ret_int = fcfo.modify_expense_log(268435600, "joe", "Some notes here", "fred",

     "", 6, 3.45, 0, "", "");