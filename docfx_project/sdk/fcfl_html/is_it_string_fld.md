_is_it_string_fld_
--------------------

**Object and Type**

Object  : FCApp

Type     : Method

**Prototype**

```
Public Function is_it_string_fld(tbl_name As String, _
                                 field_name As String) As Boolean
``` 

#### Description

This method returns whether a given field is defined (in the specified table) as a string field.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| tbl_name | Yes | Name of the table |
| field_name | Yes | Name of the field |

**Returns**

A boolean (true/false) that tells if the field is a valid string field in the specified table.

**Example**

The example shows if  "title" is a valid string field for the case table.

**Visual Basic:**

The code in this example is written in Visual Basic.

Debug.Print "Is 'title' a valid string field in the 'case' table? " & _

            CStr(FCApp.is_it_string_fld("case", "title"))