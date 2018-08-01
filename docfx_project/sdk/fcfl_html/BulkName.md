_BulkName_
----------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public BulkName As String
```

#### Description

This property allows you to specify the bulk object for this generic. It also allows you to see the name of the bulk associated with this generic.

When you set the bulk name for a generic, **FCFL** will associate the generic to the proper bulk object for you. If the FCBulk object does not yet exist, it will create it for you automatically.

When generic objects are created, they are associated with a special bulk, whose name is the empty string ("").

**Example**

The following example creates two generic objects. They are both placed into the same bulk so that they can be queried and written together in a single unit of work.

**JavaScript:**
```
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
```

**Visual Basic:**
```
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
```