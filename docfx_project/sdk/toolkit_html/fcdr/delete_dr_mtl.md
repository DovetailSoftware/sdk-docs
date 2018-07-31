_delete_dr_mtl_
-----------------

Public Function delete_dr_mtl(ByVal mtl_log_objid As Long,

ByVal creation_time As String) As Integer

**Description**

This API will delete material usage applied to a depot repair part.

#### Parameters
**Parameter Name**                **Required?**             **Description**

mtl_log_objid                       Yes                         The objid of the material log object to be deleted.

creation_time                        No                           The time that the material is being removed from the depot repair part.

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Specified Material Log record is not in database

-2                                             Related Onsite Log record is not in database

-3                                             Related Demand Detail record is not in database

**Examples**

 Delete material log 268435463.

**JavaScript:**

var retval = FCDR.delete_dr_mtl(268435463, "");