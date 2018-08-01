_CreateGeneric_
---------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function CreateGeneric() As FCGeneric
```

#### Description

This method creates and initializes a new FCGeneric object. It is **THE ONLY** way that generic objects should be created. Do not do the following:

Dim boCase As New FCGeneric    ' BAD!!!!!!

The above code would create a new generic object,  but would not properly initialize it. Instead, simply Dim the variable as FCGeneric (no NEW keyword), and create it with this method.

**Returns**

A new FCGeneric object, properly initialized.

**Example**

The following example creates two new generic objects. One is on the case table, and one is on the site table.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

// Create the case object, and site object.

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

The following example simply creates a new FCApplication object and a new FCSession object.

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Dim boSite As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"