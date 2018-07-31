create_time_log
-----------------

Public Function create_time_log(ByVal onsite_objid As Long, _
                  ByVal id_num As String, ByVal creation_time As String, _
      ByVal notes As String, ByVal perf_by As String, _
                  ByVal user_name As String, ByVal time_type As String, _
      ByVal start_time As String, ByVal duration As Long, _
                  ByVal billable As Long, ByVal bill_to As String, _
      ByVal wrk_center As String, _
ByVal resolution As String) As Integer

**Description**

This API allows creation of a time log that is related to an onsite log. The OBJID of the onsite log or a case/subcase id must be supplied (but not both), and the other parameters are all optional.

#### Parameters
**Parameter Name**                **Required?**             **Description**

onsite_objid                          Yes                         The OBJID of the onsite log this time log is related to

id_num                                   No                           The Id number for the Case or Subcase if no onsite log is specified

creation_time                        No                           The time this time log is created. If left blank, it will be the current time

notes                                      No                           The note text for this time log

perf_by                                  No                           The user who is performing the actions associated to the onsite log

user_name                             No                           The user who is creating the onsite log. If left blank, the current user

performs the create

time_type                              No                           Value from the TIME_TYPE list

start_time                              Yes                         When the process started

duration                                 Yes                         How much time was spent, in number of seconds

billable                                   No                           Indicates if this time is billable (1=Billable, Other Value = Not Billable)

bill_to                                     No                           Indicates who this expense log will be billed to, from the BILL_TO_TIME

                                                                                list in Policies and Customers

wrk_center                            No                           Value from the WORK_CENTER list where the time was spent

resolution                              No                           Value from the RESOLUTION_CODE list

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Could not find specified TIME_TYPE value

-2                                             Could not find specified BILL_TO_TIME value

-3                                             Cannot find user in database

-4                                             Cannot find employee record for user in database

-5                                             Cannot find employee record for performing user in database

-6                                             Cannot find specified case/subcase

-7                                             Could not find specified WORK_CENTER

-8                                             Could not find specified RESOLUTION_CODE

-9                                             Cannot find the 'T & E log' activity string with rank = 1800

-10                                           Either Case ID or Onsite Log Objid must be specified

-11                                           Cannot find user record for performing user in database

-12                                           The supplied onsite log objid is not found

ret_objid                                The objid of the new time log object is returned by this parameter.

ret_objid2                              The objid of the new onsite object is returned by this parameter.

**Examples**

 Create a new time log related to onsite log 268435522. The creation time is 10:55 am on September 11, 1998. A sample note is passed, and the resolution will be "Completed". The user will default, and the performing user will be set to "db". This default time type is billable to the customer. The process started in the default work center at 10:00 am and lasted for 10 minutes. Once created, the new objid will be passed back in the tl_objid field.

**Visual Basic:**

   Dim ret_int  As Integer

Dim tl_objid As Long

ret_int = fcfo.create_expense_log(268435522, "", "09/11/98 10:55:00", _
                                   "time log note", "db", "", "", _
        "09/11/98 10:00:00", 600, 1, "Customer", _
        "", "Completed")

   If ret_int = 0 Then

     tl_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.create_expense_log(268435522, "", "09/11/98 10:55:00",

                                   "time log note", "db", "", "",

        "09/11/98 10:00:00", 600, 1, "Customer",

        "", "Completed");

if (ret_int == 0){ var tl_objid = fcfo.ret_objid; }

 Create a new time log related to onsite log 268435463. The time spent was 2 minutes, starting at noon on 9/10/1998, and was non-billable. All other parameters will default.

**Visual Basic:**

   Dim ret_int  As Integer

Dim tl_objid As Long

ret_int = fcfo.create_expense_log(268435463, "", "", "", "", "",_
                                   "", "09/09/1998 12:00", 120, 0, "", _
                                   "", "")

   If ret_int = 0 Then

     tl_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.create_expense_log(268435463, "", "", "", "", "",

                                   "", "09/09/1998 12:00", 120, 0, "",

                                   "", "");

if (ret_int == 0){ var tl_objid = fcfo.ret_objid; }