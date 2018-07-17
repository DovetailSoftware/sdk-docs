modify_appt
-----------

Public Function modify_appt(ByVal appt_objid As Long, _

                  ByVal start_time As String, ByVal end_time As String, _

                  ByVal duration As Long, ByVal description As String, _

                  ByVal cell_text As String, ByVal appt_class As String, _

                  ByVal appt_type As String, ByVal user_name As String, _

                  ByVal creation_time As String) As Integer

**Description**

This API modifies an existing appointment record in the Clarify database. You must pass in a valid appointment Objid (which is returned by the _make_appt_ API). The user can specify a description and a cell text (the latter is what is shown in schedule tracker). You can specify the start/end time either with both times or with one time and a duration, but at least 2 of the 3 parameters must be specified. The duration is specified in seconds.

The appointment type and subtype are optional code list values that may be specified. The user performing the logging may be specified as can the creation time. If you do not specify a value for one of the arguments, the value in the existing record is not updated.

#### Parameters
**Parameter Name                Required?             Description                                                                                                          **

appt_objid                             Yes                         The OBJID of the appointment to modify

start_time                              No                           When does the appointment start

end_time                                No                           When does the appointment end

duration                                 No                           How long (in seconds) is the appointment. Note that two of the three (start,             

end, duration) must be given

description                            No                           The description of the appointment

cell_text                                 No                           The text to display in the schedule tracker cell

appt_type                              No                           Value from the Employee Sched Class code list

appt_sub_type                     No                           Value from the Employee Sched Type code list

user_name                             No                           The user who modified the appointment. If left blank, the current user

performs the modify

creation_time                        No                           When is the log modified? If left blank, it will be modified at the current

                                                                                time

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Specified start time is not a valid date

-2                                             Specified end time is not a valid date

-3                                             Start time cannot be greater than specified end time

-4                                             Duration is not the same as difference of start and end times

-5                                             Cannot find specified appointment record

-6                                             Cannot find schedule for specified appointment

-7                                             Cannot find specified user in database

-8                                             Cannot find the 'Replace Appt' activity string with rank = 6300

-9                                             Cannot find specified Appt Class

-10                                           Cannot find specified Appt Type

**Examples  **

 Update an existing appointment. Set all the data that you can set. Change the start time and end time for the appointment.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_appt(268435457, "12/1/98 16:00:00", "", 1800, _

                            "A new description", "New cell text", _

 "Appt type", "Appt subtype", "Fred", "9/9/98")

**JavaScript:**

var ret_int = fcfo.modify_appt(268435457, "12/1/98 16:00:00", "", 1800,

                            "A new description", "New cell text",

 "Appt type", "Appt subtype", "Fred", "9/9/98");

 Simply change the start time for an appointment. Leave it at 1 hour in length.

**Visual Basic:**

   Dim ret_int   As Integer

ret_int = fcfo.modify_appt(268435466, "12/1/98 16:00:00", "", 3600, _

                            "", "", "", "", "", "")

**JavaScript:**

var ret_int = fcfo.modify_appt(268435466, "12/1/98 16:00:00", "", 3600,_

                            "", "", "", "", "", "");