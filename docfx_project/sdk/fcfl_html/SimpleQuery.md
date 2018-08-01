_SimpleQuery_
-------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub SimpleQuery(ByVal obj_name As String)
```

#### Description

This method sets the DBObjectName property for a generic object. It is exactly the same as that property, and is included for similarity with ClearBasic.

Call on this method for all generics, except those that will be child objects.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| obj_name | Yes | The name of the table or view, not including the "table_" |

**Example**

The following example queries the case table.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Query the case table

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boCase.Query();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.Query