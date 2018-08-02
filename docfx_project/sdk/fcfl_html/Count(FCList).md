_Count__(FCList)_
-----------------

**Object and Type**

Object  : FCList

Type     : Property

**Prototype**

```
Public Count    As Integer
```

#### Description

This property tells you how many items are stored in the list.  This is a read only property.  On new, cleared and empty lists, this property is 0.

**Example**

This example shows the creation of a list and the verification of the number of items in it.

**Visual Basic:**

```
Dim list As New FCList

list.AppendItem "x", "y", "z", "Q"

If list.Count = 4 Then
  MsgBox "List contains the right number of items"
Else
  MsgBox "List does not contain the right number of items"
End If
```