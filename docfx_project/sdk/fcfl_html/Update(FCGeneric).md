_Update(FCGeneric)_
----------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub Update()
```

#### Description

This crucial method will update the **CURRENT** record in the generic object (and only that record). The method will add it, update it, or delete it as appropriate. It will also make whatever relations are needed so that the object will be correct.

If no changes have been made to the current record in the generic object, this method will do nothing.

If you wish to update all of the (modified) records in the generic object, you should call on the UpdateAll method. If you wish to modify records in multiple generic objects in one unit of work (for referential integrity), use the FCBulk object's Update or UpdateAll method.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12008 | You may not update a view |
| 12009 | Could not add record because not all fields were selected in a previous query |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example locates a site record and updates a field in it.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Locate a specific site, and update a field in it

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  boSite.AppendFilter("objid", "=", "268435457");

  boSite.Query();

  boSite("external_id") = "An ID";

  boSite.Update();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  boSite.AppendFilter "objid", "=", 268435457

  boSite.Query

  boSite("external_id") = "External"

  boSite.Update