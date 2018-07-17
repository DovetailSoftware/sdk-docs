_SetNullStringsToEmpty(FCSession)_
----------------------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public SetNullStringsToEmpty  As Boolean

**Description**

This property tells the session if all generic objects in that session should set NULL fields to empty strings (when read) by default. Whatever value is set in this property (which is False initially) is passed to each generic when that generic is created.

The generic object can override the value passed in from the session by setting the SetNullStringsToEmpty  property on the generic object after it is created.

For more details on what the SetNullStringsToEmpty  property does, please see the SetNullStringsToEmpty  documentation for the FCGeneric object above.

**Example**

The following example demonstrates setting the SetNullStringsToEmpty  property for a new object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Set all NULL Strings to empty strings

  SetNullStringsToEmpty  = true;

**Visual Basic:**

The code in this example is written in Visual Basic.

  SetNullStringsToEmpty  = True