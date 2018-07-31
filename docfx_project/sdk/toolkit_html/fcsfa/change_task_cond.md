change_task_cond
------------------

Public Function change_task_cond(ByVal task_id As String, _
                                 ByVal new_cond As String, _
                                 ByVal new_status As String, _
                                 ByVal user_name As String, _
                                 ByVal change_date As String, _
                                 ByVal gen_time_bombs As Boolean) As Integer

**Description**

This API can be used to change the condition and (optionally) a status for an action item. You must supply the action item ID and the condition, but no other data is required. The APIs can also generate a time bomb (for business rule notification).

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| task_id | Yes | The ID of the action item to change |
| new_cond | Yes | The new condition for the action item |
| new_status | No | New status for the action item |
| user_name | No | The user who changed the condition/status. If left blank, the current user performs the change status. |
| change_date | No | When was the condition/status changed. If this parameter is left blank, the change occurs at the current time |
| gen_time_bombs | Yes | Should a time_bomb be generated (for notifications/business rules) |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Invalid condition specified

-2                                             Cannot find the specified action item

-3                                             The action item is currently closed

-4                                             The action item is currently dispatched

-5                                             Cannot locate the specified user

-6                                             The status provided is not valid for the specified condition

-7                                             Cannot find the employee record for the specified user

-8                                             Cannot find the activity string for "Change Condition"

**Examples**

 Change condition and status for action item '44' to Not Started/Working. Generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.change_task_cond("44", "Not Started", "Working", "",

                                     "", true);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.change_task_cond("44", "Not Started", "Working", "", _
                                     "", True)

 Change to the default status for action item "55" on 1/1/2005. The change was performed by "Fred". Do not generate a time bomb.

**JavaScript:**

var ret_int = fcsfa.change_task_cond("55", "Not Started", "", "fred",

                                     "1/1/2005", false);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcsfa.change_task_cond("55", "Not Started", "", "fred",

                                     "1/1/2005", False)