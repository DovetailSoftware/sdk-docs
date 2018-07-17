_QueryEmptyToNull(FCGeneric)_
-----------------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

Public QueryEmptyToNull As Boolean

**Description**

This property operates on queries for generics, and alters the behavior of the query for nullable string fields. Quite often people will write queries such as the following:

  var boSite = FCSession.CreateGeneric('site');

  boSite.AppendFilter("site_id", "=", "");

The problem is that it is unclear if this should include only the one site that has a site_id of the empty string (""), or if should also include any sites where the site_id is NULL.

If this property is set to _True,_ then any query (for the "=" or "is in" operators) will include both the empty string and Nulls. If it is turned off, only the empty string will be queried. No other operators (such as _Starts With_) take advantage of this property - it doesn't make sense for those operators.

When you create a new generic (with the FCSession.CreateGeneric method), the value of FCSession.QueryEmptyToNull is automatically filled in to this property. Thus, if you wish to have QueryEmptyToNull set to the same value for all generic BOs,  you can set the value you wish in the FCSession object, and ignore this property on each generic object.

**NOTE:** For strings that can't be Null, this method does not do anything.

**Example**

The following example demonstrates setting the QueryEmptyToNull property for a new object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Include all relations in a query for site_part

  var boSite = FCSession.CreateGeneric('site');

  boSite.QueryEmptyToNull = true;  // Not needed � it's the default!

  boSite.Query();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric("site")

  boSite.QueryEmptyToNull = True

  boSite.Query