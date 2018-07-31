_AppendItem_
------------

**Object and Type**

Object  : FCList

Type     : Property

**Prototype**

Public Sub AppendItem(ByRef item1 As Variant, _
                      Optional ByRef item2 As Variant, _
                      Optional ByRef item3 As Variant, _
                      Optional ByRef item4 As Variant, _
                      Optional ByRef item5 As Variant, _
                      Optional ByRef item6 As Variant, _
                      Optional ByRef item7 As Variant, _
                      Optional ByRef item8 As Variant, _
                      Optional ByRef item9 As Variant)

**Description**

Append from one to nine items onto the list.  Items are appended in order on the end of the list.  Items must be all of the same type and they must match the types of items currently in the list.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| item1 | Yes | First item to append to the list. |
| item2 - item9 | No | Second through ninth item to append to the list. |

**Error codes**

**Value**                **Meaning**

4                                              Can not add item to list.  List is of different type than item.

6                                              Item to be added to the list is of a type not supported.

**Example**

The example shows the simple creation of a list with AppendItem.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var aList;

aList = new ActiveXObject("FCFL.fclist");

aList.AppendItem(2, 3, 4, 5);

aList.AppendItem(6, 2, 4, 12);

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

list.AppendItem 2, 3, 4, 5

' list now has the numbers 2, 3, 4 and 5

list.AppendItem 6, 2, 4, 12

' list now has the numbers 2, 3, 4, 5, 6, 2, 4, and  12