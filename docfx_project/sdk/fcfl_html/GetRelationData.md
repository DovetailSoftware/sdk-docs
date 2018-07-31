_GetRelationData_
-----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetRelationData(ByVal rel_name As String, _

                ByVal tbl_name As String) As ADODB.Recordset

**Description**

This method returns the meta-data for the specified relation from the Clarify ADP table (adp_sch_rel_info). It returns a recordset (of one record) with the data for this relation. For more information about the Clarify ADP tables, please see the Clarify documentation, or contact First Choice Software.

**Note**: This method is only for advanced users who need to directly manipulate relation data in Clarify. Most applications will never need to use this method.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| rel_name | Yes | The name of the relation |
| tbl_name | Yes | The name of the table (without the "table_" prefix) |

**Returns**

The record from adp_sch_rel_info with data about the specified relation.

**Error Codes**

**Value**                **Meaning**

10001                                      The specified relation is not found for the specified table, or the table name is not valid

**Example**

The following example returns data about the case_reporter2site relation in the case table:

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim rel_data As New ADODB.Recordset

Set rel_data = fc_app.GetRelationData("case_reporter2site", "case")

MsgBox rel_data("inv_rel_name")