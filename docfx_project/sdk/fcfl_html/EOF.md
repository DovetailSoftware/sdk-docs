_EOF_
-----

**Object and Type**

Object  : FCGeneric

Type     : Property (Read-only)

**Prototype**

```
Public EOF As Boolean
```

#### Description

This property is used to determine if the current record for a generic object is past the end of the dataset. For example, if you use a MoveLast call to move to the last record of an object, and then call on MoveNext, the EOF property would be set to True. If you then called on MoveFirst, the EOF property would be set to False.

**Example**

The following example demonstrates a common loop where each record in an object is processed until there are no more. It uses EOF for the termination condition.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Get sites so we can loop through them

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  boSite.Query();

  // Now print them out

  while (boSite.EOF != true)

  {

    Response.Write ("Site: " + boSite("name"));  

    boSite.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  boSite.Query

  While boSite.EOF = False

    MsgBox "Site: " & boSite("name")

    boSite.MoveNext

  Wend