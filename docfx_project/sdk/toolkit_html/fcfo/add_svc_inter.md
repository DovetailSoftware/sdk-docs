add_svc_inter
---------------

Public Function add_svc_inter(ByVal case_id As String, _
                  ByVal sp_objid As Long, ByVal description As String, _
ByVal start_time As String, ByVal end_time As String, _
                  ByVal duration As Long, ByVal svc_class As String, _
                  ByVal svc_type As String, ByVal user_name As String, _
                  ByVal creation_time As String) As Integer

**Description**

This API logs a service interruption (and creates an appointment record) in the Clarify database. The user can specify a description and a cell text (the latter is what is shown in schedule tracker). You can specify the start/end time either with both times or with one time and a duration. The duration is specified in seconds.

Each appointment must be specified for a given case or a piece of equipment (site_part), but both cannot be specified. If you specify a case, the case must have a related site_part. The appointment type and subtype are optional code list values that may be specified.  The user performing the logging may be specified as can the creation time. The APIs return the objid of the appointment object created.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| case_id | Yes | ID number of optional case, if appointment is for a case or site part |
| sp_objid | No | OBJID of the site_part if appointment is for a piece of equipment |
| description | No | The description of the appointment |
| start_time | No | When does the appointment start |
| end_time | No | When does the appointment end |
| duration | No | How long (in seconds) is the appointment. Note that two of the three (start, end, duration) must be given |
| svc_class | No | Value from the Installed Prod Sched Class code list |
| svc_type | No | Value from the Employee Sched Type code list |
| user_name | No | The user who made the appointment. If left blank, the current user performs the create |
| creation_time | No | When is the appt. log created. If left blank, it will be created at the current time |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             If start time not specified there must be both an end time and duration specified

-2                                             If end time not specified there must be both a start time and duration specified

-3                                             Start time specified is after end time specified

-4                                             If start time, end time, and duration are specified, duration specified must match

-5                                             There must be either a case id or site part objid specified

-6                                             Cannot find site_part for specified case

-7                                             Cannot find specified case

-8                                             The specified Installed Prod Sched Class not found in database

-9                                             The specified Installed Prod Sched Type not found in database

-10                                           Cannot find user in database

-11                                           Cannot find employee record for user in database

-12                                           Cannot find the 'Add Appt' activity string with rank = 6200

-13                                           Site Part specified by objid was not found

-14                                           There is an overlap between new interruption and existing interruption

-15                                           There must be either a case id or site part objid specified, but not both

ret_objid                                OBJID of the newly created appointment record.

ret_objid2                              OBJID of the newly created appointment record's schedule record.

**Examples**

 Create a service interruption for case C102 for  "sa" for the September 12, 1999, for 10 minutes. Relate to a case, and use default code list values.

**Visual Basic:**

Dim ret_int    As Integer

Dim ap_objid   As Long

   ret_int = fcfo.add_svc_inter("C102", 0, "test by case", _
                                "9/12/99 11:00:00", "9/12/99 11:10:00", 600, _                    

                    "", "", "sa", "7/23/99 2:57:59")

   If ret_int = 0 Then

     ap_objid = fcfo.ret_objid

   End If

**JavaScript:**

   var ret_int = fcfo.add_svc_inter("C102", 0, "test by case",

                                   "9/12/99 11:00:00", "9/12/99 11:10:00", 600,                    

                       "", "", "sa", "7/23/99 2:57:59");

 if (ret_int == 0){ var ap_objid = fcfo.ret_objid; }

 Create an appointment for site_part 268435458  for the 12th of  September 1999 (use start and end time) for 1 hour. Relate to a site_part, use default code list values.

**Visual Basic:**

Dim ret_int    As Integer

Dim ap_objid   As Long

   ret_int = fcfo.add_svc_inter("", 268435458, "test by site part", _
                    "9/12/99 11:00:00", "9/12/99 12:00:00", _     

                   0, "", "", "", "7/23/99 2:57:59")

   If ret_int = 0 Then

     ap_objid = fcfo.ret_objid

   End If

**JavaScript:**

   var ret_int = fcfo.add_svc_inter("", 268435458, "test by site part",

                        "9/12/99 11:00:00", "9/12/99 12:00:00",     

                       0, "", "", "", "7/23/99 2:57:59");

 if (ret_int == 0){ var ap_objid = fcfo.ret_objid; }