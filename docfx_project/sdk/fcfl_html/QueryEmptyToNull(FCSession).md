_QueryEmptyToNull(FCSession)_
-----------------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public QueryEmptyToNull As Boolean

**Description**

This property tells the session if all generic objects in that session should set the QueryEmptyToNull by default. Whatever value is set in this property (which is True initially) is passed to each generic when that generic is created.

The generic object can override the value passed in from the session by setting the QueryEmptyToNull property on the generic object after it is created.

For more details on what the QueryEmptyToNull property does, please see the QueryEmptyToNull documentation for the FCGeneric object above.

**Example**

The following example demonstrates setting the QueryEmptyToNull property for a new object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Include all relations for the session

  FCSession.QueryEmptyToNull = true;

**Visual Basic:**

The code in this example is written in Visual Basic.

  Fc_session.QueryEmptyToNull = True