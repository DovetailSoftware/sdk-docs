_Delete_
--------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub Delete()

**Description**

This method deletes the current record in a generic object. You may not call on Delete when BOF or EOF is True, and you may not attempt to Delete a new (and as-of-yet uncommitted) record.

The deletion of a row is not immediate. You must call on UpdateAll (either on the generic object or  the bulk) to cause the delete to occur. You may not use the Update method to commit the delete, as the Delete method moves the current pointer, and it is not possible to point back to it.

All relations that point to the deleted row in other tables are also set to NULL (and the MTM rows that point to it are deleted). Thus, after a Delete is committed, nothing in the database will point to the objid of the deleted row.

After an object is marked for deletion, it cannot be seen in a traversal of the generic object (with the Move methods). Also, it will not be shown as a record with the Count and TotalCount methods.

Further, when you perform a Delete, the current record is moved to the next available record in the data set. You do not have to perform a MoveNext to get to the next record. If this is the last record of the recordset, Delete will move the record to the previous active record in the recordset. If the record to be deleted is the only one in the recordset, BOF will be made True.

**Error Codes**

**Value**                **Meaning**

12013                                      You may not delete a record marked to be added to the generic object

12031                                      This operation is not valid for a generic that is marked distinct

**Example**

The following example deletes all records in a custom table called "my_table".

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Set up a query of all rows in test table

  var boMyTable = FCSession.CreateGeneric();

  boMyTable.DBObjectName = "my_table";

  boMyTable.Query();

  // While there are more rows to delete, delete them all

  // Remember, you don't need to do a MoveNext here

  while (boMyTable.EOF != true)

  {

    boMyTable.Delete();

  }

  boMyTable.UpdateAll();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boMyTable As FCGeneric

  Set boMyTable = fc_session.CreateGeneric

  boMyTable.DbObjectName = "my_table"

  boMyTable.Query

  While boMyTable.EOF = False

    boMyTable.Delete

  Wend

  boMyTable.UpdateAll