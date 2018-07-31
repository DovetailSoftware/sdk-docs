_ListByIndex_
-------------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Function ListByIndex(ByRef index As Variant) As FCList

**Description**

This method creates a new list from the parent list.  This new list contains the items in the parameter index.  Index can be an integer or a list of integers.  If index is an integer, the item number of parent list is the only member of the new list.  If index is a list, it is a list of integers to form the new list from.  The list is zero based.  This means the index to the first item is 0, the second is 1, etc.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| index | Yes | If index is an integer number, the item to include in new list. If index is a list, it is a list of items to form new list from. The list is zero based. |

**Returns**

Returns a list containing the indicated items.

**Error Codes**

**Value**                **Meaning**

9                                              Index out of range for the list.

12                                            Index list must be of type integer or long.

13                                            Index must be variable of type list, integer or long.       |

**Example**

This example shows the creation of list2 from list1 first by an integer and then by a list (list3).

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list1 As New fc_List

Dim list2 As New fc_List

Dim list3 As New fc_List

list1.AppendItem "a", "b", "c", "d", "e", "f", "g", "h", "i"

Set list2 = list1.ListByIndex(3)

' list2 contains "d"

list3.AppendItem 3, 5, 7, 0

Set list2 = list1.ListByIndex(list3)

' list2 contains "d", "f", "h", "a"