move_pr
-------

```
Public Function move_pr(ByVal pr_id As String, ByVal new_wipbin_name As String) As Integer
```

#### Description

This API causes the specified part request to be moved from one WIPBin to another (for the current owner). The part request must be open, and the WIPBin name must be valid for the current owner.

**Note:** This API allows you to move a queueable object from one WIPBin to another, even if the object is currently dispatched. Since WIPBins are internal to a user, there really is no reason that you shouldn't be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| pr_id | Yes | The part request to move |
| new_wipbin_name | Yes | Name of the WIPBin to move to |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified part request |
| -2 | Part request is already closed |
| -3 | New WIPBIN doesn't exist, or isn't for the owner |
| -4 | New WIPBIN is same as old - no move needed |

#### Examples

Move part request number '1-14' to WIPBin 'Hardware'.

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccl.move_pr("1-14", "Hardware")
```

**JavaScript:**
```
var ret_int = fccl.move_pr("1-14", "Hardware");
```