move_solution
-------------

Public Function move_solution(ByVal solution_id As String, _
                              ByVal new_wipbin As String) As Integer

**Description**

This API causes the specified solution to be moved from one WIPBin to another (for the current owner). The solution must be open, and the WIPBin name must be valid for the current owner.

**Note:** This API allows you to move a solution object from one WIPBin to another, even if the object is currently dispatched. Since WIPBins are internal to a user, there really is no reason that you shouldn't be able to move the internal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Parameters
**Parameter Name**                **Required?**             **Description**

solution_id                            Yes                         The solution to move

new_wipbin                          Yes                         Name of the WIPBin to move to

**Returns**

**Value**                **Meaning**

 0                                             No errors

-1                                             Cannot find the specified solution

-2                                             Solution is already closed

-3                                             New WIPBIN doesn't exist, or isn't for the owner

-4                                             New WIPBIN is same as old - no move needed

**Examples**

 Move solution number '14' to WIPBin 'Hardware'.

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcinter.move_solution("14", "Hardware")

**Javascript:**

var ret_int = fcinter.move_solution("14", "Hardware");