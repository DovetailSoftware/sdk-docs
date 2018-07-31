### AddForUpdate

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub AddForUpdate(TheObjid As Long)

**Description**

This method is used when you know the objid of a database record, and wish to update it, but do not wish to take the time to query it from the database. Calling this method will add a new record (for updating) to the recordset, and will set the objid field to the specified parameter.

You can then change any fields, or set any relations, just like any other record. Unlike the AddNew method, this method will not attempt to insert a record into the database.

**Note**: This method does not validate the objid you provide. If it is illegal, you will receive a runtime error when you attempt to update the record.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| theObjid | Yes | This is the objid of the record to update |

**Error Codes**

**Value**                **Meaning**

12031                                      This operation is not valid for a generic that is marked distinct

**Example**

The following example creates a new record in the recordset for the case table for update. It then updates the alt_city field.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Allocate the case

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  // Add a row for update, modify it, and commit

  boCase.AddForUpdate("268435457");

  boCase ("alt_city") = "My town";

  boCase.Update();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.AddForUpdate 268435457

  boCase("alt_city") = "Your city"

  boCase.Update