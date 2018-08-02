_GetItemByIndex_
-------------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

```
Public Sub GetItemByIndex(ByVal index As Integer, ByRef value As Variant)
```

#### Description

This method returns the item in the list at the location specified.  Lists are zero based.  This means the index to the first item is 0, the second is 1, etc. This is similar to the ItemByIndex function, except the value is passed back as a parameter.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| index | Yes | Index of item in the list to return. List is zero based. |
| value | Yes | The item located at the index location. |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 7 | Index out of range for the list. |
| 8 | List is empty. |

#### Examples

This example shows setting up a list and getting the fourth item.

**Visual Basic:**
```
Dim list As New FCList
Dim value As Integer

list.AppendItem 1, 2, 3, 4, 5, 6, 7, 8, 9
list.GetItemByIndex 4, value 

If value = 5 Then
  MsgBox "Item value is as expected"
Else
  MsgBox "Item is not correct"
End If
```