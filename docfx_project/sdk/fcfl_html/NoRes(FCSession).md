_NoRes(FCSession)_
------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public NoRes As Boolean
```

#### Description

This property tells the session if all generic objects in that session should ignore data restriction, or not. Whatever value is set in this property (which is False initially) is passed to each generic when that generic is created.

The generic object can override the value passed in from the session by setting the NoRes property on the generic object after it is created.

For more details on what the NoRes property does, please see the NoRes documentation for the FCGeneric object above.

**Example**

The following example demonstrates setting the NoRes property for a new object.

**JavaScript:**
```
  // Include all relations for the session

  NoRes = true;
```

**Visual Basic:**
```
  NoRes = True
```