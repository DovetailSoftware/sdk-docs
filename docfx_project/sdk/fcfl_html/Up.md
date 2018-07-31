### Up

---

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

Public Sub Up(ByRef list As fc_List)

**Description**

This method swaps upward items in the list.  It takes as it argument an integer list of indexes of the items to move.  Indexes are zero based, so the first item in the list to be processed is 0 and the last item in the list is list.Count - 1.  If items in index_list are neighbors in the list, they are moved as a group.  The top item in the list can never be moved by this method.  The movement is logical, in that the movement is done in the sorted order of the index list.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| list | Yes | List containing the indexes of the items in the processed list to move. Indexes are zero based. |

**Returns**

The list with the appropriate items in the index list moved up.

**Error Codes**

**Value**                **Meaning**

9                                    Index in index_list is out of range for the list.

16                                        The index list contains duplicate indexes.

17                                        Items in the index list must be integer.

**Example**

This examples sets up list1 in order and list2 as a list of indexes of items to move up in list1.  It then uses list2 to move up items in list1.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list1 As New FCList

Dim list2 As New FCList

list1.AppendItem 1, 2, 3, 4, 5, 6, 7, 8, 9

list2.AppendItem 2, 3, 5

list1.Up list2

' List 1 now contains 1, 2, 4, 5, 3, 7, 6, 8, 9