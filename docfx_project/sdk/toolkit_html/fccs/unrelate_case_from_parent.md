unrelate_case_from_parent
---------------------------

```
Public Function unrelate_case_from_parent(ByVal case_id As String) As Integer
```

#### Description

This API allows a case to be unrelated from the current parent case. The case must be related to a parent case.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| case_id | Yes | The ID of the case. The parent of this case will be cleared. |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the specified case ID |
| -2 | The specified case does not have a parent case |

#### Examples

 Unrelate case 5 from its parent case.

**JavaScript: **

var ret_int = fccs.unrelate_case_from_parent("5");

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccs.unrelate_case_from_parent("5")