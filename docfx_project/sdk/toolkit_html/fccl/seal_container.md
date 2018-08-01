seal_container
--------------

```
Public Function seal_container(ByVal cont_name As String) As Integer
```

#### Description

This API seals an existing container.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| cont_name | Yes | The container to seal |

#### Returns

| Value | Meaning |
|:--- |:--- |
| 0 | No errors |
| -1 | Cannot find the container |
| -2 | The container is already sealed |
| -3 | One or more of the child containers is still open |

#### Examples

Seal container Fred.

**Visual Basic:**

Dim ret_int As Integer

   ret_int = fccl. seal_container("Fred")

**Javascript:**

   var ret_int = fccl. seal_container("Fred");