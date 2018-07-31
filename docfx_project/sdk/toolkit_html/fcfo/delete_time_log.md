delete_time_log
-----------------

Public Function delete_time_log(ByVal time_log_objid As Long, _
                  ByVal last_modified As String, _
                  ByVal user_name As String) As Integer

**Description**

This API deletes an existing time log. The time log OBJID must be supplied, and the user performing the delete and the time that the delete occurred can optionally be specified.

#### Parameters
**Parameter Name**                **Required?**             **Description**

time_log_objid                     Yes                         The OBJID of the time log to delete

last_modified                        No                           When is the log deleted? If left blank, it will be deleted at the current time

user_name                             No                           The user who deleted the log. If left blank, the current user performs

the delete

**Returns**

**Value**                **Meaning**

0                                         No errors

-1                                             Could not find specified time log

-2                                             Could not find onsite log for time log

-3                                             Could not find case for time log

-4                                             Could not find user in the database

-5                                             Cannot find the 'T & E log edit' activity string with rank = 8700

**Examples**

 Delete time log.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcfo.delete_time_log(268435666, "", "")

**JavaScript:**

var ret_int = fcfo.delete_time_log(268435666, "", "");

 Joe deleted a time log on February 1, 1998 at noon.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcfo.delete_time_log(268436555, "2/1/98 12:00:00", "Joe")

**JavaScript:**

var ret_int = fcfo.delete_time_log(268436555, "2/1/98 12:00:00", "Joe");