make_appt
---------

Public Function make_appt(ByVal description As String, _
      ByVal start_time As String, ByVal end_time As String, _
      ByVal duration As Long, ByVal cell_text As String, _
      ByVal emp_first As String, ByVal emp_last As String, _
      ByVal site_part_objid As Long, ByVal appt_type As String, _
      ByVal appt_sub_type As String, ByVal case_id As String, _
      ByVal user_name As String, ByVal creation_time As String) _
      As Integer

**Description**

This API creates an appointment record in the Clarify database. The user can specify a description and a cell text (the latter is what is shown in schedule tracker). You can specify the start/end time either with both times or with one time and a duration. The duration is specified in seconds.

Each appointment must be specified for a given employee or a piece of equipment (site_part). Both cannot be specified. The appointment type and subtype are optional code list values that may be specified, and the case ID may also be optionally specified.  The user performing the logging may be specified as can the creation time. The API returns the objid of the appointment object created.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| description | No | The description of the appointment |
| start_time | Yes | When does the appointment start |
| end_time | No | When does the appointment end |
| duration | No | How long (in seconds) is the appointment. Note that two of the three (start, end, duration) must be given |
| cell_text | No | The text to display in the schedule tracker cell |
| emp_first | No | First name of employee if appointment is for the employee |
| emp_last | No | Last name of the employee if appointment is for the employee |
| site_part_objid | No | OBJID of the site_part if appointment is for a piece of equipment |
| appt_type | No | Value from the Employee Sched Class code list |
| appt_sub_type | No | Value from the Employee Sched Type code list |
| case_id | No | ID number of optional case, if appointment is for a case |
| user_name | No | The user who made the appointment. If left blank, the current user performs the create |
| creation_time | No | When is the log created. If left blank, it will be created at the current time |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             End date and duration required if start time not specified

-2                                             Start date and duration required if end time not specified

-3                                             Start time cannot be greater than specified end time

-4                                             Duration does not match start/end times

-5                                             No employee or site_part specified

-6                                             Both employee and site_part specified

-7                                             Specified case not found in database

-8                                             The appt_type gbst elm not found in database

-9                                             The appt_sub_type gbst elm not found in database

-10                                           Specified user name not found in database

-11                                           Cannot find the 'Add Appt' activity string with rank = 6200

-12                                           Specified employee not found in database

-13                                           Specified site_part not found in database

ret_objid                                The objid of the new appointment object is returned by this parameter.  

**Examples**

 Create an appointment for employee "sa" for the 11th of  October, 1998 for 10 minutes. Relate to a case, and set up type and subtype values.

**Visual Basic:**

Dim ret_int    As Integer

Dim ap_objid   As Long

ret_int = fcfo.make_appt("test description", "10/11/98 11:00:00", _      

           "", 600, "Cell text", "sa", "sa", 0, _
           "Field Service", "Warranty Upgrade", "1", _
           "sa", "")

   If ret_int = 0 Then

     ap_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.make_appt("test description", "10/11/98 11:00:00",      

              "", 600, "Cell text", "sa", "sa", 0,

"Field Service", "Warranty Upgrade", "1",                     "sa", "");

 if (ret_int == 0){ var ap_objid = fcfo.ret_objid; }

 Create an appointment for site_part 268435458  for the 11th of  Octember, 1998 (use start and end time) for 1 hour. Relate to a case, use default code list values. Don't relate to a case, and have it logged by "Joe" at an earlier date/time.

**Visual Basic:**

Dim ret_int    As Integer

Dim ap_objid   As Long

ret_int = fcfo.make_appt("test description", "10/11/98 11:00:00", _      

           "9/11/98 12:00:00", 0, "Cell text", "", "", _
           268435458, "", "", "", "Joe", "10/1/98 8:00:00")

   If ret_int = 0 Then

     ap_objid = fcfo.ret_objid

   End If

**JavaScript:**

var ret_int = fcfo.make_appt("test description", "10/11/98 11:00:00",       

           "9/11/98 12:00:00", 0, "Cell text", "", "",

268435458, "", "", "", "Joe", "10/1/98 8:00:00");

 if (ret_int == 0){ var ap_objid = fcfo.ret_objid; }