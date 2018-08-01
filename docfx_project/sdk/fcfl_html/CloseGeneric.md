_CloseGeneric_
--------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub CloseGeneric()
```

#### Description

When you are finished with a generic object, and do not need it any more, you should call on this method to close it out so you can reclaim the memory. It cleans up various internal data structures for you to accomplish this.

After you have called this method, you should also set the generic to Nothing (or Null, depending on the language) to complete the freeing of memory.

**Example**

The following example demonstrates how a generic object should be cleaned up.

**JavaScript:**
```
  // Create and query an object
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.Query();

  // Now close it up properly
  boSite.CloseGeneric();
  boSite = null;
```

**Visual Basic:**
```
  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query
  boSite.CloseGeneric

  Set boSite = Nothing
```