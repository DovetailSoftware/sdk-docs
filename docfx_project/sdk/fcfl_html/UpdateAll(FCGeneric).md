_UpdateAll(FCGeneric)_
-------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub UpdateAll()
```

#### Description

This crucial method will update **ALL** of the records in the generic object. The method will add, update, or delete any records as appropriate. It will also make whatever relations are needed so that the object will be correct.

If no changes have been made to any of the records in the generic object, this method will do nothing to those records.

If you wish to update just one record in the generic object, you should call on the Update method. If you wish to modify records in multiple generic objects in one unit of work (for referential integrity), use the FCBulk object's Update or UpdateAll method.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12008 | You may not update a view |
| 12009 | Could not add record because not all fields were selected in a previous query |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example sets the external_id field for all of the sites that it locates.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Find all sites

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  boSite.Query();

  // Update a field for all of the sites

  // Update all modified records in this generic

  while (boSite.EOF != true)

  {

    boSite("external_id") = "An external ID";

    boSite.MoveNext();

  }

  boSite.UpdateAll();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  boSite.Query

  While boSite.EOF = False

    boSite("external_id") = "An external ID!"

    boSite.MoveNext

  Wend

  boSite.UpdateAll