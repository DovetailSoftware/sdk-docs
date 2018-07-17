### BulkID

**Object and Type**

Object  : FCBulk

Type     : Property (Read-only)

**Prototype**

Public BulkID As Integer

**Description**

This is an internal property that uniquely identifies the Bulk within the **FCFL** system. In most cases there is **NO REASON** for you to ever use this property. If you wish to read it (to maintain a unique key for your Bulks), it can be read.

However, changing the value stored in this property could cause errors with other parts of **FCFL**.

**Example**

The following example creates two new generic objects, assigns them to bulks, and prints the BulkIDs for each.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Create the first object

  var boObj1 = FCSession.CreateGeneric();

  boObj1.SimpleQuery("part_num");

  boObj1.BulkName = "my_bulk1";

  // Create the other object. Put it in the same bulk as the first

  var boObj2 = FCSession.CreateGeneric();

  boObj2.SimpleQuery("part_num");

  boObj2.BulkName = "my_bulk2";

  // Show that the bulks are now the same

  Response.Write ("Bulk 1 ID is: " + boObj1.Bulk.BulkID); 

  Response.Write ("Bulk 2 ID is: " + boObj2.Bulk.BulkID);

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boObj1 As FCGeneric

  Dim boObj2 As FCGeneric

  Set boObj1 = fc_session.CreateGeneric

  boObj1.SimpleQuery "part_num"

  boObj1.BulkName = "my_bulk1"

  Set boObj2 = fc_session.CreateGeneric

  boObj2.SimpleQuery "part_num"

  boObj2.BulkName = "my_bulk2"

  MsgBox "Bulk 1 ID is: " & boObj1.Bulk.BulkID

  MsgBox "Bulk 2 ID is: " & boObj2.Bulk.BulkID