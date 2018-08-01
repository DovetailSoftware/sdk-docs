_NoRes(FCGeneric)_
------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public NoRes As Boolean
```

#### Description

This property tells the generic object if it should ignore data restriction for queries (and insertions of new rows).  If this property is set to _False_ (which is the default), then data restriction is properly applied to this generic object. If the property is set to _True_, then **FCFL** does not apply any data restrictions to the object.

This property must be set prior to the Query method being called (for queries), and the Update or UpdateAll methods being called (for inserts).

**Note**: This property is quite powerful, and can create significant problems if misused. It should only be used by experienced programmers.

**Example**

The following example demonstrates setting the NoRes property for a new object. First a query  is performed with normal data restriction. Then the same query is performed without data restriction.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Query for all sites for the restriction group

  var boSite = FCSession.CreateGeneric('site');

  boSite.Query();

  // Query for all sites

  var boSite2 = FCSession.CreateGeneric('site');

  boSite2.NoRes = True;

  boSite2.Query();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSite  As FCGeneric

  Dim boSite2 As FCGeneric

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  boSite.Query

  Set boSite2 = fc_session.CreateGeneric

  boSite2.SimpleQuery "site"

  boSite2.NoRes = true

  boSite2.Query