_is_it_searchable_
--------------------

**Object and Type**

Object  : FCApp

Type     : Method

**Prototype**

```
Public Function is_it_searchable(tbl_name As String, _
                                 field_name As String) As Boolean
``` 

#### Description

This method returns whether a given field is defined (in the specified table) as a searchable field. This is defined only for Oracle databases. SQL Server and Sybase databases do not define searchable (s_) columns. This method will always return "false" for those database types.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| tbl_name | Yes | Name of the table |
| field_name | Yes | Name of the field |

**Returns**

A boolean (true/false) that tells if the field is a valid searchable field in the specified table. Oracle only. Other databases always return "false."

**Example**

The example shows if  "title" is a valid searchable (string) field for the case table.

**Visual Basic:**

The code in this example is written in Visual Basic.

Debug.Print "Is 'title' a valid searchable field in the 'case' table? " & CStr(FCApp.is_it_searchable("case", "title"))