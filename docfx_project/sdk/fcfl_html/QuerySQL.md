_QuerySQL_
----------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public QuerySQL As String
```

#### Description

This property simply contains the SQL statement that FCFL used to query the generic. When FCFL queries a generic object, the SQL string used for the query is placed into this string property. The primary purpose of this property is for debugging as new code is written.

No similar operation is currently available for insert, delete, and update operations.

**Example**

The following example demonstrates setting the QuerySQL property for a query object.

**JavaScript:**
```
  // Include all relations in a query for site_part
  var boSite = FCSession.CreateGeneric('site');
  boSite.Query();

  alert(boSite.QuerySQL);
```

**Visual Basic:**
```
  Dim boSite As FCGeneric
  Set boSite = fc_session.CreateGeneric("site")
  boSite.Query

  msgbox boSite.QuerySQL
```