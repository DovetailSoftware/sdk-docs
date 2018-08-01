_Bulk_
------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public Bulk As FCBulk
```

#### Description

This property allows you to specify the bulk object for this generic. Or you can get the bulk object associated with this generic.

In almost all cases, you will not need to use this method. Bulks are automatically created by **FCFL**, and you do not need to worry about them.

Rather than using this property, you will usually just use the BulkName property to set the name of the bulk associated with this generic. If that bulk name does not exist, **FCFL** will build it for you.

When generic objects are created, they are associated with a special bulk, whose name is the empty string ("").

**Example**

The following example creates two generic objects. One is assigned to a bulk via the _BulkName_ property. The other is moved into the same bulk with the _Bulk_ property.

**JavaScript:**
```
  // Create the first object
  var boObj1 = FCSession.CreateGeneric();
  boObj1.SimpleQuery("part_num");
  boObj1.BulkName = "my_bulk";

  // Create the other object. Put it in the same bulk as the first
  var boObj2 = FCSession.CreateGeneric();
  boObj2.SimpleQuery("part_num");
  boObj2.Bulk = boObj1.Bulk;

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
  boObj2.Bulk = boObj1.Bulk

  MsgBox "Bulk 1 name is: " & boObj1.Bulk.Name
  MsgBox "Bulk 2 name is: " & boObj2.Bulk.Name
```