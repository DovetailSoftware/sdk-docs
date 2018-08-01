_CloseSession_
--------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Sub CloseSession()
```

#### Description

This method frees all resources and references to the FCSession object.

**Example**

The following example logs out and frees the FCSession resources.

**JavaScript:**
```
FCSession.Logout();
FCSession.CloseSession();
FCSession = null;
```