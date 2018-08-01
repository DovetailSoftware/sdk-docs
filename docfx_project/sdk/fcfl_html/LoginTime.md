_LoginTime_
-----------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public Property Get LoginTime() As Date
```

#### Description

This property returns the date/time of when this FCSession logged in.

**Example**

The following example shows when the current user logged in.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

Response.Write("FCSession Login Time = " + FCSession.LoginTime);

FCSession = null;