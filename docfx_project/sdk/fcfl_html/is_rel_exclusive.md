_is_rel_exclusive_
--------------------

**Object and Type**

Object  : FCApp

Type     : Method

**Prototype**

```
Public Function is_rel_exclusive(tbl_num As Long, rel_name As String, _
                                 tbl_fld As String, _
                                 objid_fld As String) As Boolean
``` 

#### Description

This method determines if the specified relation is an exclusive relation (or not) for the specified table. If it is, the final two arguments are filled in with the names of the table and objid fields that are used to perform the exclusive relation functionality.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| tbl_num | Yes | Number of the table (e.g. case=0) |
| rel_name | Yes | Name of the relation |
| tbl_fld | Yes | Contains the name of the field used to store the table number for the related table |
| objid_fld | Yes | Contains the name of the field used to store the objid for the relation |

**Returns**

A boolean (true/false) that tells if the relation is an exclusive relation. If it is, the final two arguments contain the names of the fields (in the _tbl_name_ table) that contain the table number and the objid data.

**Example**

The example shows if  "case2r_rqst" is a valid exclusive relation for the case table.

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim tbl_fld   As String

  Dim objid_fld As String

  Dim ret_bool  As Boolean

  ret_bool = FCApp.is_rel_exclusive(0, "case2r_rqst", _

                                     tbl_fld, objid_fld)

  If ret_bool Then

     Debug.Print "It is exclusive. The table field is '" & tbl_fld & _

       "' and the objid field is '" & objid_fld & "'" | Else | Debug.Print "Is it not an exclusive relation."

  End If