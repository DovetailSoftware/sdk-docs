check_cq_trans
----------------

Public Function check_cq_trans(ByVal old_cond As String, _
       ByVal old_stat As String, _
                               ByVal new_cond As String, _
       ByVal new_stat As String, _
                               ByVal user_name As String) As Integer

**Description**

This API can be used to determine if a particular user can change status from an old condition/status to a new condition/status. The API checks the transitions as set up in Clarify's Policies & Customers.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| old_cond | Yes | Old condition for the CR |
| old_stat | Yes | Old status for the CR |
| new_cond | Yes | New condition for the CR |
| new_stat | Yes | New status for the CR |
| user_name | Yes | User performing the transition |

**Returns**

**Value**                **Meaning**

0 Transition is allowed for this user

-1                                             Status transition not defined in Policies and Customers

-2                                             Status transition not allowed for specified user

-10                                           Privclass not found for specified user

-11                                           Old status not found for old condition

-12                                           New status not found for new condition

**Examples**

 Check if Sam can transition from "In research" in "Open" condition to "Fixed" status in the "Fixed" condition.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccq.check_cq_trans("Open", "In research", "Fixed", _
                              "Fixed", "sam")

**JavaScript:**

var ret_int = fccq.check_cq_trans("Open", "In research", "Fixed",

                                  "Fixed", "sam");