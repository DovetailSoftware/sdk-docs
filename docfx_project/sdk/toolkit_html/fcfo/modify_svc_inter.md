modify_svc_inter
------------------

Public Function modify_svc_inter(ByVal appt_objid As Long, _

                  ByVal desc As String, ByVal start_time As String, _

                  ByVal end_time As String, ByVal duration As Long, _

                  ByVal svc_class As String, ByVal svc_type As String, _

                  ByVal user_name As String, ByVal creation_time As String) _

      As Integer

**Description**

This API modifies an existing service interruption (appointment) record in the Clarify database. You must pass in a valid appointment objid (which is returned by the _add_svc_inter_ APIs). The user can specify a description and can append to a description by using  "+" as the first character of the text to add to the original.   You can specify the start/end time either with both times or with one time and a duration but at least 2 of the 3 parameters must be specified. To use the original appointment time, don't specify the start_time or end_time. The duration is specified in seconds.  You can specify a "-1" in the svc_class,  svc_type, and this will leave the original data in the appointment record.

The appointment type and subtype are optional code list values that may be specified. The user performing the logging may be specified as can the creation time. If you do not specify a value for one of the arguments, the value in the existing record is not updated.

#### Parameters
**Parameter Name**                **Required?**             **Description**

appt_objid                             Yes                         The OBJID of the appointment to modify

description                            No                           The description of the appointment

start_time                              No                           When does the appointment start. If you want to leave the original time,

use = ""

end_time                                No                           When does the appointment end. If you want to leave the original time, use

 = ""

duration                                 No                           How long (in seconds) is the appointment

svc_class                              No                           Value from the Installed Prod Sched Class code list (Use "" to keep current value)

svc_type                                               No                           Value from the Installed Prod Sched Type code list (Use "" to keep current value)

user_name                             No                           The user who modified the appointment. If left blank, the current user

performs the modify

creation_time                        No                           When is the log modified? If left blank, it will be modified at the current time

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             If start time not specified there must be both an end time and duration specified

-2                                             Specified end time is not valid

-3                                             Start time specified is after end time specified

-4                                             If start time, end time, and duration are specified, duration specified must match

-5                                             Cannot find the specified appointment

-6                                             Cannot find the schedule for the specified appointment

-7                                             Specified appt has no appt_type defined

-8                                             Specified appt has no sub_type defined

-9                                             Cannot find specified Appt Class

-10                                           Cannot find specified Appt Type

-11                                           Cannot find specified user in database

-12                                           Cannot find employee record for specified user in database

-13                                           Cannot find the 'Replace Appt' activity string with rank = 6300

**Examples  **

 Update an existing appointment. Set all the data that you can set. Change the start time and set the end time to the original end time from the appointment by using "-1".

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_svc_inter(268435465, "A new description", _

     "12/1/98 16:00:00", "-1", 600, _

                                "Appt type", "Appt subtype",  "sa", _

                                "9/9/98")

**JavaScript:**

var ret_int = fcfo.modify_svc_inter(268435465, "A new description",

         "12/1/98 16:00:00", "-1", 600,

                                    "Appt type", "Appt subtype",  "sa",

                                    "9/9/98");

 Simply append to the description for an appointment.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_svc_inter(268435465, "+for api", "", "", 0, _

                                "", "", "", "")

**JavaScript:**

var ret_int = fcfo.modify_svc_inter(268435465, "+for api", "", "", 0,

                                    "", "", "", "");