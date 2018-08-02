_Sort_
------

**Object and Type**

Object  : FCList

Type     : Method

**Prototype**

```
Public Sub Sort()
```

#### Description

This method sorts the list.  After the list is sorted the _Sorted_ property is set to true.  Sort order is defined by the defined sort order on the machine this method is executed.

**Example**

This example shows the sorting of a simple list of characters.

**Visual Basic:**
```
Dim list1 As New FCList

list1.AppendItem "c", "f", "i", "a", "d", "g", "b", "e", "h"
list1.Sort

' list1 contains "a", "b", "c", "d", "e", "f", "g", "h", "i"
```