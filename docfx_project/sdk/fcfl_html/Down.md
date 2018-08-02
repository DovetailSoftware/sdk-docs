_Down_
------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

```
Public Sub Down(ByRef index_list As FCList)
```

#### Description

This method swaps downward items in the list.  It takes as it argument an integer list of indexes of the items to move.  Indexes are zero based, so the first item in the list to be processed is zero and the last item in the list is list.Count - 1.  If items in index_list are neighbors in the list, they are moved as a group.  The bottom item in the list (item zero) can never be moved.  The movement is logical, in that the movement is done in the sorted order of the index list.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| index_list | Yes | A list containing the indexes of the items in the processed list to move. Indexes are zero based. |

**Returns**

The list with the appropriate items in the index list moved down.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 9 | Index in index_list is out of range for the list. |
| 18 | Items in the index list must be integer. |
| 19 | The index list contains duplicate indexes. |

**Example**

This examples sets up list1 in order and list2 as a list of indexes of items to move down in list1.  It then uses list2 to move down items in list1.

**Visual Basic:**
```
Dim list1 As New FCList
Dim list2 As New FCList

list1.AppendItem 1, 2, 3, 4, 5, 6, 7, 8, 9
list2.AppendItem 2, 3, 5, 8
list1.Down list2

' List 1 now contains 1, 3, 4, 2, 6, 5, 7, 9, 8
```