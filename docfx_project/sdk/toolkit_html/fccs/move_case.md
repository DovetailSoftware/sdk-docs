move_case
---------

Public Function move_case(ByVal case_id As String, _
                          ByVal new_wipbin As String) As Integer

**Description**

This API causes the specified case to be moved from one WIPBin to another WIPBin. The new WIPBin must belong to the same user as the first WIPBin. The move operation does not change the ownership of the case, nor is an activity log or time bomb generated for the action.

**Note:** This API allows you to move a queueable object from one WIPBin to another, even if the object is currently dispatched. Since WIPBins are internal to a user, there really is no reason that you shouldn't be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The case to move |
| new_wipbin | Yes | The WIPBin to move the case to. If left blank, the case is moved to the user's default WIPBin |

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Cannot find the specified case

-2                                             Case is already closed

-3                                             New WIPBIN doesn't exist, or isn't for the owner

-4                                             New WIPBIN is same as old - no move needed

**Examples**

 Move case number 'C154' to the default WIPBin for the current owner.

**JavaScript: **

var ret_int = fccs.move_case("C154", "");

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.move_case("C154", "")

 Move case number '2' to WIPBin 'Urgent'.

**JavaScript: **

var ret_int = fccs.move_case("2", "Urgent");

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.move_case("2", "Urgent")