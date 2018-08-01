_CloseAllGenerics_
------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Sub CloseAllGenerics()
```

#### Description

This method closes and  frees all resources and references for any and all of the generics associated with the current session. It does not matter what bulks the generics are located in, nor does it matter if the generics are open or closed.

This method also closes and frees up the memory associated with any (non-empty) bulk objects associated with the generics that are closed.

This method is called by FCSession.CloseSession. If you are calling the close session method, you do not need to call this method.

up to 10 FCGeneric objects.

**Example**

The following example closes all generic objects associated with an FCSession object

**JavaScript:**
```
FCSession.CloseAllGenerics();
```

**Visual Basic:**
```
FCSession.CloseAllGenerics
```