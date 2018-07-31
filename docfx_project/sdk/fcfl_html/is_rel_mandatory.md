_is_rel_mandatory_
--------------------

**Object and Type**

Object  : FCApp

Type     : Method

**Prototype**

Public Function is_rel_mandatory(tbl_num As Long, _

                rel_name As String) As Boolean

**Description**

This method determines if the specified relation is a mandatory relation.

#### Parameters
**Parameter Name**                **Required?**             **Description**

tbl_num                                 Yes                         Number of the table (e.g. case=0)

rel_name                                Yes                         Name of the relation

**Returns**

A boolean (true/false) that tells if the relation is a mandatory relation.

**Example**

The example shows if  "case_reporter2contact" is a valid mandatory relation for the case table.

**Visual Basic:**

The code in this example is written in Visual Basic.

  Debug.Print "Is 'case_reporter2contact' mandatory? " & _

         CStr(FCApp.is_rel_mandatory(0, "case_reporter2contact"))