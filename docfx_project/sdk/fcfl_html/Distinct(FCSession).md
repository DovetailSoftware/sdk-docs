_Distinct(FCSession)_
---------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public Distinct  As Boolean

**Description**

This property tells the session if all generic objects in that session should set the Distinct property for ) by default. Whatever value is set in this property (which is False initially) is passed to each generic when that generic is created.

The generic object can override the value passed in from the session by setting the Distinct  property on the generic object after it is created.

For more details on what the Distinct  property does, please see the Distinct  documentation for the FCGeneric object above.

**Example**

The following example demonstrates setting the Distinct  property for a new object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Set all generics to distinct

  Distinct  = true;

**Visual Basic:**

The code in this example is written in Visual Basic.

  Distinct  = True