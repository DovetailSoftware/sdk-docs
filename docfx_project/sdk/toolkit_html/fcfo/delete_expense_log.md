delete_expense_log
--------------------

Public Function delete_expense_log(ByVal expense_log_objid As Long, _

ByVal last_modified As String, _

ByVal user_name As String) As Integer

**Description**

This API deletes an existing expense log. The expense log OBJID must be supplied, and the user performing the delete and the time that the delete occurred can optionally be specified.

#### Parameters
**Parameter Name**                **Required?**             **Description**

expense_log_objid              Yes                         The OBJID of the expense log to delete

last_modified                        No                           When is the log deleted? If left blank, it will be deleted at the current time

user_name                             No                           The user who deleted the log. If left blank, the current user performs

the delete

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Could not find specified expense log

-2                                             Could not find onsite log for specified expense log

-3                                             Could not find case for specified expense log

-4                                             Could not find user in the database

-5                                             Cannot find the 'T & E log edit' activity string with rank = 8700

**Examples**

 Delete an expense log.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcfo.delete_expense_log(268435666, "", "")

**JavaScript:**

var ret_int = fcfo.delete_expense_log(268435666, "", "");

 Joe deleted an expense log on February 1.

**Visual Basic:**

Dim ret_int    As Integer

ret_int = fcfo.delete_expense_log(268436555, "2/1/98 12:00:00", "Joe")

**JavaScript:**

var ret_int = fcfo.delete_expense_log(268436555, "2/1/98 12:00:00", "Joe");