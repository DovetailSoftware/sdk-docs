_ReplaceByIndex_
-------------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

```
Public Sub ReplaceByIndex(ByRef index As Variant, ByRef item As Variant)
```

#### Description

This method replaces items in a list with the specified item.  Index can be an integer or a list of integers.  If index is an integer, only that item is replaced.  If index is a list, the list is a list of integers specifying which items to replaced.    Lists are zero based.  This means the index to the first item is 0, the second is 1, etc.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| index | Yes | Integer or list of items to replace. |
| item | Yes | Item to substitute into the list. |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 4 | Cannot add an element of this type to a list. List contains data of a different type. |
| 6 | Item of a type not supported. |
| 9 | Index out of range for list. |
| 10 | List for replace must be of type integer or long. |
| 11 | Index for replace must be of type integer or long. |

#### Examples

This example shows items being replaced in list1, first by single index, and then by a list.

**Visual Basic:**
```
Dim list1 As New FCList
Dim list2 As New FCList

list1.AppendItem "a", "b", "c", "d", "e", "f", "g", "h", "i"
list1.ReplaceByIndex 2, "x"

' list1 now contains "a", "b", "x", "d", "e", "f", "g", "h", "i"

list2.AppendItem 3, 5, 0
list1.ReplaceByIndex list2, "y"

' list1 now contains "y", "b", "x", "y", "e", "y", "g", "h", "i"
```