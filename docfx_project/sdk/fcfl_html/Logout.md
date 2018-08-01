_Logout_
--------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Sub Logout()
```

#### Description

This method logs out the currently logged-in FCSession. The Item collection is also cleared out. After calling the Logout method, you should also call the CloseSession method. This will ensure that all system resources from this FCSession are freed.

**Example**

The following example logs out the current FCSession.

**JavaScript:**
```
FCSession.Logout();
FCSession.CloseSession();
FCSession = null;
```