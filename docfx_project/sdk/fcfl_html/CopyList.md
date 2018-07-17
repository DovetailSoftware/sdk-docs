_CopyList_
----------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Function CopyList() As FCList

**Description**

This method makes a copy of the current list, and returns a pointer to the copy.

**Returns**

The copy of the list.

**Example**

This example creates a list, and makes a copy of it.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim mainList As New FCList

Dim theCopy  As FCList

mainList.AppendItem 2, 3, 4, 5

Set theCopy = mainList.CopyList