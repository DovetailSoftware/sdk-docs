_ItemType_
----------

**Object and Type**

Object  : FCList

Type     : Property

**Prototype**

Public ItemType As String

**Description**

This property describes the type of data that can be stored in a list.  When a list is created or cleared, this property has no value.   At this point, it can be set to one of the allowed values.  If not set, the value is set to the type of the type of the first data added to the list.   All future data added to the list must be of this type.  Once set, this property can only be reset by clearing the list.

**Values       **

**Value                                     Description                                                                                                          **

integer                                    List contains short (2 byte) integer data.

long                                        List contains long (4-byte) integer point data.

single                                     List contains small (4-byte) floating-point data.

string                                      List contains string data.

userdefinedtype                   List contains data of a user defined data structure.

variant                                    List contains general untyped data.

**Error Codes**

**Value**                **Meaning**

0 Cannot set property - invalid type.

1 Cannot set property � already set.

**Example**

This is an example of implicitly setting the ItemType and checking its value.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

list.AppendItem "data"

MsgBox "list.ItemType = '" & list.ItemType & "'" 

' type = string

This is an example of setting the ItemType on a list, and then getting the error thrown adding wrong type data to the list.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim list As New FCList

On Error GoTo catch_it

list.ItemType = "integer"

list.AppendItem "data"

Exit Sub

catch_it:

MsgBox "Caught error '" & Err.Description & " (" & CStr(Err.Number) & ")'"