_Clear_
-------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

```
Public Sub Clear()
```

#### Description

This method clears out the data in a list and resets the list to a pristine condition.  The list's property _ItemType_ is reset and all data in the list is lost.

**Example**

This  example shows the creation of a list with integer data, clear and reused with string data.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var aList;

aList = new ActiveXObject("FCFL.fclist");

aList.AppendItem(2, 3, 4, 5);

aList.Clear();

aList.AppendItem("This", "is", "some", "data");

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

list.AppendItem 2, 3, 4, 5

' list now has the numbers 2, 3, 4 and 5

list.Clear

' list now has no data

list.AppendItem "This", "is", "some", "data"

' list now has the strings "This", "is", "some", and "data"