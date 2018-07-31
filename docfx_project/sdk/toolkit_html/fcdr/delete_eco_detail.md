_delete_eco_detail_
---------------------

Public Function delete_eco_dtl(ByVal eco_dtl_objid As Long) As Integer

**Description**

This API will delete an ECO detail object.

#### Parameters
**Parameter Name**                **Required?**             **Description**

eco_dtl_objid                       Yes                         The objid of the ECO detail object to be deleted.

**Returns**

**Value                                     Meaning                                                                                                                                               **

0                                              No errors

-1                                             Specified ECO Detail is not in database

**Examples  **

 Delete ECO Detail 268435463.

**JavaScript:**

var ret_int = fcdr.delete_eco_dtl(268435463);

**Visual Basic:**

Dim ret_int As Integer

ret_int = fcdr.delete_eco_dtl(268435463)