_ItemByIndex_
-------------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Function ItemByIndex(ByVal index As Integer) as Variant

**Description**

This method returns the item in the list at the location specified.  Lists are zero based.  This means the index to the first item is 0, the second is 1, etc. This is similar to the GetItemByIndex subroutine, except the value is passed back as the function value.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

index                                       Yes                         Item in the list to return. List is zero based.

**Returns**

Item located at that index location.

**Error Codes**

**Value                                     Meaning                                                                                                                               **

7                                              Index out of range for the list.

8                                              List is empty.

**Example**

This example shows setting up a list and getting the fourth item.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

list.AppendItem 1, 2, 3, 4, 5, 6, 7, 8, 9

If list.ItemByIndex(4) = 5 Then

  MsgBox "Item value is as expected"

Else

  MsgBox "Item is not correct"

End If