_IncludeRelations(FCSession)_
-----------------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public IncludeRelations As Boolean
```

#### Description

This property tells the session if all generic objects in that session should include relations by default. Whatever value is set in this property (which is False initially) is passed to each generic when that generic is created.

The generic object can override the value passed in from the session by setting the IncludeRelations property on the generic object after it is created.

For more details on what the IncludeRelations property does, please see the IncludeRelations documentation for the FCGeneric object above.

**Example**

The following example demonstrates setting the IncludeRelations property for a new object.

**JavaScript:**
```
  // Include all relations for the session
  IncludeRelations = true;
```

**Visual Basic:**
```
  IncludeRelations = True
```