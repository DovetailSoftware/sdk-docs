_Duplicate_
-----------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Function Duplicate(Optional use_generic As FCGeneric) _

                          As FCGeneric

**Description**

This method allows you to make a copy of one row of a generic object (the current row), and to copy it to another generic object. It will copy the contents of every field in the object, EXCEPT the objid. The objid is not included because you will want the new row to have an objid that is unique to that row. All MTO and OTOP relations are also copied, as they are long integer data fields in the record.

**Note**: If you have set the DataFields property for the base object to only point to a subset of the fields in the object, only those fields will be copied to the new duplicate.

The one argument for this method is optional. If you do not include it, the Duplicate method will create a new generic (copying all properties of the original, including the DBObjectName, DataFields, ParentBO, and Parent Relation) and will duplicate the record in the new generic.

If you include a generic object as an argument to this method, the duplicate will be added to the specified generic. If you provide this argument, please make sure that the two generics are set for the same database object.

**Note**: You may **NOT** add a duplicate to the same business object. In other words, if you want to duplicate a row from the case_obj BO, you may not supply case_obj as the argument for Duplicate.

**Error Codes**

**Value**                **Meaning**

12031                                      This operation is not valid for a generic that is marked distinct

#### Parameters
**Parameter Name**                **Required?**             **Description**

use_generic                          No                           Generic to which to add the copy. If not supplied, a new

generic object will be created, used, and returned.

**Returns**

The generic object that contains the duplicate row. The duplicate row will be set as the current data row.

**Error Codes**

**Value**                **Meaning**

12017                                      The generic object to duplicate has no rows in it, or the current row is set to

BOF or EOF

**Example**

This examples duplicates two rows from the time_bomb table and places them in the same (new) generic object.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim tb1 As FCGeneric

Dim tb2 As FCGeneric

                   ' Build the first generic object and query for

                   '  some time_bombs

Set tb1 = fc_session.CreateGeneric

tb1.SimpleQuery "time_bomb"

tb1.Query

                   ' Now copy the first one

                   ' Move to the next row

                   ' Copy the next one in the same generic

Set tb2 = tb1.Duplicate

tb1.MoveNext

Set tb2 = tb1.Duplicate(tb2)