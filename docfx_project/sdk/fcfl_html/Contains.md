_Contains_
----------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

```
Public Function Contains(ByRef item As Variant) As Boolean
```

#### Description

This method tells whether item is a member of the list.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| item | Yes | Item to check for in the list. |

#### Returns

| Value | Meaning |
|:--- |:--- |

True                                        List contains item.

False                                       List does not contain item.

**Example**

This example tests list4 for the element "test_A_1x".

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list4 As New FCList

-

If list4.Contains("test_A_1x") Then

    MsgBox "List includes 'test_A_1x'"

Else

    MsgBox "List does not include 'test_A_1x'"

End If