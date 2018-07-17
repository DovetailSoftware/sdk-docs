### Name

**Object and Type**

Object  : FCBulk

Type     : Property

**Prototype**

Public Name As String

**Description**

This is the name of the FCBulk object. It is set when the bulk is created, and should not be set by the programmer, except in rare circumstances.

It is more commonly accessed as a read-only property.

**Example**

The following example creates two new generic objects, assigns them to bulks, and prints the bulk's name for each.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Create the first object

  var boObj1 = FCSession.CreateGeneric();

  boObj1.SimpleQuery("part_num");

  boObj1.BulkName = "my_bulk";

  // Create the other object. Put it in the same bulk as the first

  var boObj2 = FCSession.CreateGeneric();

  boObj2.SimpleQuery("part_num");

  boObj2.BulkName = "my_bulk";

  // Show that the bulks are now the same

  Response.Write ("Bulk 1 name is: " + boObj1.Bulk.Name); 

  Response.Write ("Bulk 2 name is: " + boObj2.Bulk.Name);

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boObj1 As FCGeneric

  Dim boObj2 As FCGeneric

  Set boObj1 = fc_session.CreateGeneric

  boObj1.SimpleQuery "part_num"

  boObj1.BulkName = "my_bulk"

  Set boObj2 = fc_session.CreateGeneric

  boObj2.SimpleQuery "part_num"

  boObj2.BulkName = "my_bulk"

  MsgBox "Bulk 1 name is: " & boObj1.Bulk.Name

  MsgBox "Bulk 2 name is: " & boObj2.Bulk.Name