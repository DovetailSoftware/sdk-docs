relate_case_to_parent
-----------------------

```
Public Function relate_case_to_parent(ByVal case_id As String, _
                            ByVal parent_id As String) As Integer
```

#### Description

This API allows a case to be related to a specified parent case. You must make sure that the new parent case is not the same as the case (you cannot relate a case to itself), and the new parent cannot be anywhere in the descendent tree of the new child case.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The ID of the new child case |
| parent_id | Yes | The ID of the new parent case |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | The case ID and parent case ID cannot be the same |
| -2 | Cannot find the specified case ID |
| -3 | The parent ID is already a descendent of the case ID |
| -4 | Cannot find the specified parent case ID |
| -5 | The new parent is already related as the parent of the case |

#### Examples

Relate case 5 to have a new parent of case 66.

**JavaScript:**
```
var ret_int = fccs.relate_case_to_parent("5", "66");
```

**Visual Basic:**
```
Dim ret_int As Integer

ret_int = fccs.relate_case_to_parent("5", "66")
```