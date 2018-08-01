_DeleteAll_
--------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub DeleteAll()
```

#### Description

This method deletes all of the records in a generic object. The DeleteAll method performs a MoveFirst, so it does not matter where in the records collection you are currently positioned. The method calls on the Delete method to delete each row, so you should read that method's documentation to understand how it operates.

The deletion of a row is not immediate. You must call on UpdateAll (either on the generic object or  the bulk) to cause the delete to occur. You may not use the Update method to commit the delete, as the Delete method moves the current pointer, and it is not possible to point back to it.

All relations that point to the deleted row in other tables are also set to NULL (and the MTM rows that point to it are deleted). Thus, after a DeleteAll is committed, nothing in the database will point to the objid of the deleted row(s).

After an object is marked for deletion, it cannot be seen in a traversal of the generic object (with the Move methods). Also, it will not be shown as a record with the Count and TotalCount methods.

Further, when you perform a DeleteAll, the current record is set to EOF.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example deletes all records in a custom table called "my_table".

**JavaScript:**
```
  // Set up a query of all rows in test table
  var boMyTable = FCSession.CreateGeneric();
  boMyTable.DBObjectName = "my_table";
  boMyTable.Query();
  boMyTable.DeleteAll();
  boMyTable.UpdateAll();
```

**Visual Basic:**
```
  Dim boMyTable As FCGeneric
  Set boMyTable = fc_session.CreateGeneric
  boMyTable.DbObjectName = "my_table"
  boMyTable.Query
  boMyTable.DeleteAll
  boMyTable.UpdateAll
```