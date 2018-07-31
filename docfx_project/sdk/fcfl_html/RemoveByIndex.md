_RemoveByIndex_
---------------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Sub RemoveByIndex(ByRef index As Variant)

**Description**

This method removes items from a list.  This resulting list has the proper elements removed.  Index can be an integer or a list of integers.  If index is an integer, only that item is removed.  If index is a list, the list is a list of integers specifying which items to remove.  Items are removed as indexed from before the first remove.  Lists are zero based.  This means the index to the first item is 0, the second is 1, etc.    The removal is logical; Items are removed at the index they located at when the method is called.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| index | Yes | If index is an integer number, the item to remove from the list. If index is a list, it is a list of items to remove from list.  the list is zero based. |

**Error Codes**

**Value**                **Meaning**

9                                              Index out of range for list.

14                                            List of items to remove must be of type integer or long.

15                                            List of items to remove contains duplicate data.

20                                            Index to remove must be integer or long.

**Example**

This example shows items being removed from list1, first by single index, and then by a list.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list1 As New FCList

Dim list2 As New FCList

list1.AppendItem "a", "b", "c", "d", "e", "f", "g", "h", "i"

list1.RemoveByIndex 2

' list1 now contains "a", "b", "d", "e", "f", "g", "h", "i"

list2.AppendItem 3, 5, 0

list1.RemoveByIndex list2

' list1 now contains "b", "d", "f", "h", "i"