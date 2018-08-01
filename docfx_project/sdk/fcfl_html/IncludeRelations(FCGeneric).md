_IncludeRelations__(FCGeneric)_
-------------------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public IncludeRelations As Boolean
```

#### Description

This property tells the generic object if it should include all MTO and OTOP relations for this object in the DataFields property when it queries the generic from the database.

If this property is set to _False_, then you must specifically list each and every relation that you wish to query using the DataFields property. If it is set to _True_, all of those relations are automatically selected, and are available for you to use.

When you create a new generic (with the FCSession.CreateGeneric method), the value of FCSession.IncludeRelations is automatically filled in to this property. Thus, if you wish to have IncludeRelations set to the same value for all generic BOs,  you can set the value you wish in the FCSession object, and ignore this property on each generic object.

This property is included in **FCFL** for performance purposes. If you do not need the relations being queried from a specific generic object, this allows you to not include those relations, which can improve performance.

This property is important because if you wish to traverse from this generic to another (using the relation), you must include the relation in the query. Thus you must either list it specifically in the DataFields property, or you must turn on IncludeRelations.

**Example**

The following example demonstrates setting the IncludeRelations property for a new object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Include all relations in a query for site_part

  var boSitePart = FCSession.CreateGeneric();

  boSitePart.SimpleQuery("site_part");

  boSitePart.IncludeRelations = true;

  boSitePart.Query();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSitePart As FCGeneric

  Set boSitePart = fc_session.CreateGeneric

  boSitePart.SimpleQuery "site_part"

  boSitePart.IncludeRelations = True

  boSitePart.Query