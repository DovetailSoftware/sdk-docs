_Sorted_
--------

**Object and Type**

Object  : FCList

Type     : Property

**Prototype**

List.ItemType = Value

Value = List.ItemType

**Description**

This property tells if the list is in a sorted state.   A sorted state occurs only when the _Sort_ method is called.   Not being in a sorted state does not mean the list is not sorted.  It only means that it was not sorted by the _Sort_ method. 

**Values       **

**Value                                     Description                                                                                                          **

True                                        List is in a sorted state.

False                                       List is not in a sorted state.

**Error Codes**

**Value**                **Meaning**

3                                              The 'Sorted' property of 'List' cannot be set at runtime.

**Example**

This example shows the testing of the _Sorted_ property before and after a _Sort_ call.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

MsgBox "list.Sorted = '" & list.Sorted & "'"

' sorted = False

list.AppendItem "c", "f", "i", "a", "d", "g", "b", "e", "h"

list.Sort

MsgBox "list.Sorted = '" & list.Sorted & "'" ' sorted = True