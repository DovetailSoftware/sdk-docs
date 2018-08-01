_DBObjectNum_
-------------

**Object and Type**

Object  : FCGeneric

Type     : Property (Read-only)

**Prototype**

```
Public DBObjectNum As Long
```

#### Description

This property reports the object number of the table or view for this object. The value in it is not set until you either call on SimpleQuery, or set the DBObjectName property. The number corresponds to the object number in the Data Dictionary.

**Example**

The following example creates a new object and reports on the DBObjectNum.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Set up a query of all contacts

  var boContact = FCSession.CreateGeneric();

  boContact.DBObjectName = "contact";

  boContact.Query();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boContact As FCGeneric

  Set boContact = fc_session.CreateGeneric

  boContact.DbObjectName = "contact"

  boContact.Query