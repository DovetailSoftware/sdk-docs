_SetNullStringsToEmpty(FCGeneric)_
----------------------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public SetNullStringsToEmpty  As Boolean
```

#### Description

This property tells the generic object if it should set a string variable (that contains NULL) to the empty string ("") when it is read (touched).  In other words, in a web environment, you might wish to look at/access a value from a record in an FCGeneric object. In these web environments, you don't want (usually) to have to deal with NULL values - they're messy.

By setting the value of this property to True, **FCFL** will automatically change the value of the field to the empty string for you, which is much easier to use in a web environment.

But, even though the value in the field has "changed" (from NULL to the empty string), **FCFL** is smart enough not to write that data change back to the database.

If this property is set to False, then **FCFL** will not alter the value of the field, and it will stay as NULL.

When you create a new generic (with the FCSession.CreateGeneric method), the value of FCSession. SetNullStringsToEmpty  is automatically filled in to this property. Thus, if you wish to have SetNullStringsToEmpty  set to the same value for all generic BOs,  you can set the value you wish in the FCSession object, and ignore this property on each generic object.\

The only "problem" with this property is that when it is set to True, you cannot set the value of a string field to the empty string - **FCFL** will ignore it. This is not a common operation, but if you wish to accomplish it, just change the FCGeneric's property back to False.

**Note**: This only applies to Oracle databases and string fields. All other fields are unaffected by this property.

**Example**

The following example demonstrates setting the SetNullStringsToEmpty  property for a new object.

**JavaScript:**
```
  // Set NULL fields to empty strings for an object
  var boSitePart = FCSession.CreateGeneric();
  boSitePart.SimpleQuery("site_part");
  boSitePart.SetNullStringsToEmpty = true;
```

**Visual Basic:**
```
  Dim boSitePart As FCGeneric
  Set boSitePart = fc_session.CreateGeneric
  boSitePart.SimpleQuery "site_part"
  boSitePart.SetNullStringsToEmpty = True
```