_is_it_a_table_
-----------------

**Object and Type**

Object  : FCApp

Type     : Method

**Prototype**

Public Function is_it_a_table(tbl_name As String) As Boolean

**Description**

This method returns whether a given table name is defined in the database as a valid table. This method does not work on views, only on tables.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| tbl_name | Yes | Name of the table |

**Returns**

A boolean (true/false) that tells if the table name is valid.

**Example**

The example shows if "site_part" is a valid table in the database.

**Visual Basic:**

The code in this example is written in Visual Basic.

Debug.Print "Is 'site_part' a valid table name? " & _

            CStr(FCApp.is_it_a_table("site_part"))