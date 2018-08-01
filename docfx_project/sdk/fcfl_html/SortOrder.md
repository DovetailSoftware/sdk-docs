_SortOrder_
-----------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public SortOrder As String
```

#### Description

This property contains the sort order for a query for this generic object. It is a string that is appended to the end of the SQL _select_ statement if the BO is queried against the database.

**Note**: It is recommended that you use the higher-level AppendSort method to add sort orders to a query.

**Example**

The following example sets the sort order for a site query to sort by the status (active, inactive, obsolete), and then by site name. Both sorts are in ascending order.

**JavaScript:**
```
  // Query the site table with sorting
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.SortOrder = "status asc, name asc"
  boSite.Query();

  while (boSite.EOF != true)
  {
    Response.Write(boSite("name"));
    boSite.MoveNext(); 
  }
```

**Visual Basic:**
```
  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.SortOrder = "status asc, name asc"
  boSite.Query

  While boSite.EOF = False
    MsgBox boSite("name")
    boSite.MoveNext
  Wend
```