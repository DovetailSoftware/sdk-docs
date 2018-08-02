_is_it_date_field_
--------------------

**Object and Type**

Object  : FCApp

Type     : Method

**Prototype**

```
Public Function is_it_date_field(tbl_name As String, _
                                 field_name As String) As Boolean
``` 

#### Description

This method returns whether a given field is defined (in the specified table) as a date/time field.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| tbl_name | Yes | Name of the table |
| field_name | Yes | Name of the field |

**Returns**

A boolean (true/false) that tells if the field is a valid date/time field in the specified table.

**Example**

The example shows if  "creation_time" is a valid date/time field for the case table.

**Visual Basic:**
```
Debug.Print "Is 'creation_time' a valid date field in the 'case' " & _
   "table? " & CStr(FCApp.is_it_date_field("case", "creation_time"))
```