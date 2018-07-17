_FindFirstIndex_
----------------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Function FindFirstIndex(ByRef item As Variant) As Integer

**Description**

This method returns the index of the first item in the list that is equal to item.  Lists are zero based.  This means the index to the first item is 0, the second is 1, etc.  If the item is not found -1 is returned.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

item                                         Yes                         Item to locate in the list.

**Returns**

**Value                                     Meaning                                                                                                                               **

-1                                             Item not found in list.

>= 0                                        Index of the item in the list.  Indexes in list are zero based.

**Example**

This example shows setting up a list and checking where the item '4' is located.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

Dim where As Integer

list.AppendItem 1, 2, 3, 4, 5, 6, 4, 8, 9

where = list.FindFirstIndex(4)

If where >= 0 Then

  MsgBox "Item is located at index " + CStr(where) ' should be at 3

Else

  MsgBox "Item is not in list"

End If