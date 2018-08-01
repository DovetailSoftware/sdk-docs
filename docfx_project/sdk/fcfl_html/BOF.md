_BOF_
-----

**Object and Type**

Object  : FCGeneric

Type     : Property (Read-only)

**Prototype**

```
Public BOF As Boolean
```

#### Description

This property is used to determine if the current record for a generic object is set before the start of the dataset. For example, if you use a MoveFirst call to move to the first record of an object, and then call on MovePrevious, the BOF property would be set to True. If you then called on MoveFirst, the BOF property would be set to False.

**Example**

The following example demonstrates a common loop where each record in an object is processed until there are no more. The traversal in this case is made from the last record of the object to the first. It uses BOF for the termination condition.

**JavaScript:**
```
  // Get sites so we can loop through them
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.Query();

  // Now print them out in reverse order
  boSite.MoveLast();
  while (boSite.BOF != true)
  {
    Response.Write ("Site: " + boSite("name"));  
    boSite.MoveNext();
  }
```

**Visual Basic:**
```
  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query

  boSite.MoveLast
  While boSite.BOF = False
    MsgBox "Site: " & boSite("name")
    boSite.MovePrevious
  Wend
```