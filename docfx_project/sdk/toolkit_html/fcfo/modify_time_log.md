modify_time_log
-----------------

Public Function modify_time_log(ByVal time_log_objid As Long, _

                  ByVal creation_time As String, ByVal perf_by As String, _

                  ByVal notes As String, ByVal user_name As String, _

                  ByVal time_type As String, ByVal start_time As String, _

                  ByVal duration As Long, ByVal billable As Long, _

                  ByVal bill_to As String, ByVal wrk_center As String, _

                  ByVal resolution As String) As Integer

**Description**

This API modifies an existing time log record in the Clarify database. You must pass in a valid time log objid (which is returned by the _create_time_log_ API). You can specify the start time and a duration. The duration is specified in seconds. 

The time type is an optional code list value that may be specified. The user performing the logging may be specified as can the creation time. If you do not specify a value for one of the arguments, the value in the existing record is not updated.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

time_log_objid                     Yes                         The OBJID of the time log to modify

creation_time                        No                           When is the log modified? If left blank, it will be modified at the current

                                                                                time

perf_by                                  No                           The user who modified the time log. If left blank, the current user

performs the modify

notes                                      No                           The updated notes for the onsite log

user_name                             No                           The user who is recording the modification of the time log. If left blank, the

current user records the modify

time_type                              No                           Value from the TIME_TYPE code list

start_time                              No                           When does the time log start? If you want to leave the original time,

leave this field empty

duration                                 No                           How long (in seconds) is the appointment?

billable                                   No                           Indicates if this time is billable

bill_to                                     No                           Indicates who this time log will be billed to, from the BILL_TO_TIME

                                                                                list in Policies and Customers

wrk_center                            No                           Value from the WORK_CENTER list where the time was spent

resolution                              No                           Value from the RESOLUTION_CODE list

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Could not find specified TIME_TYPE

-2                                             Could not find specified BILL_TO_TIME

-3                                             Cannot find specified user in database

-4                                             Cannot find employee record for specified user in database

-5                                             Cannot find performing user in database

-6                                             Could not find case or subcase for time log record

-7                                             Could not find specified WORK_CENTER

-8                                             Could not find specified RESOLUTION_CODE

-9                                             Could not find the specified time log record

-10                                           Cannot find employee record for performing user in database

-11                                           Cannot find the 'T & E Log' activity string with rank = 8700

**Examples  **

 Update an existing appointment. Set all the data that you can set. Change the start time and set the end time with the original end time from the appointment by using "-1".

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_svc_inter(268435465, "A new description",

      "12/1/98 16:00:00", "-1", 600, _

                                 "Appt type", "Appt subtype", "sa", _

                                 "9/9/98")

**JavaScript:**

var ret_int = fcfo.modify_svc_inter(268435465, "A new description",

      "12/1/98 16:00:00", "-1", 600,

                                 "Appt type", "Appt subtype", "sa",

                                 "9/9/98");

 Simply append to the description for an appointment.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_svc_inter(268435465, "+for api", "", "", 0, _

                                 "-1", "-1", "", "")

**JavaScript:**

var ret_int = fcfo.modify_svc_inter(268435465, "+for api", "", "", 0,

                                 "-1", "-1", "", "");