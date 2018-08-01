_ID_
----

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public ID As Long
```

#### Description

This read-only property returns the _objid_ field of the current row of the generic object. If there are no rows in the generic, or the current record is BOF or EOF, the property returns a value of 0.

This propety can also be performed by returning the objid field from the Fields property of the generic.

**Example**

The following example demonstrates printing out the objid fields for all rows in a query.

**JavaScript:**
```
  // Find all sites
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.Query();

  // Print out their objids with ID
  while (boSite.EOF != true)
  {
    Response.Write ("Site objid: " + boSite.ID);
    boSite.MoveNext();
  }
```

**Visual Basic:**
```
  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query

  While boSite.EOF = False
    MsgBox "Objid is: " & Trim$(Str$(boSite.Id))
    boSite.MoveNext
  Wend
```