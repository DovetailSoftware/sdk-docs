move_cr
-------

```
Public Function move_cr(ByVal cr_id As String, _
						            ByVal new_wipbin As String) As Integer
```

#### Description

This API causes the specified change request to be moved from one WIPBin to another WIPBin. The new WIPBin must belong to the same user as the initial WIPBin. The move operation does not change the ownership of the change request, nor is an activity log or time bomb generated for the action.

**Note:** This API allows you to move a queueable object from one WIPBin to another, even if the object is currently dispatched. Since WIPBins are internal to a user, there really is no reason that you shouldn't be able to move the location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cr_id | Yes | The change request to move |
| new_wipbin | Yes | The WIPBin to move the change request to |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified change request |
| -2 | Change request is already closed |
| -3 | New WIPBin doesn't exist, or doesn't exist for the owner |
| -4 | New WIPBin is same as old - no move needed |

#### Examples

Move change request number '2' to WIPBin 'Urgent'.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccq.move_cr("2", "Urgent")
```

**JavaScript:**
```
var ret_int = fccq.move_cr("2", "Urgent");
```
