_UpdateTime_
------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public Property Get UpdateTime() As Date
```

#### Description

This property returns the date/time of when this FCSession was last "updated". Actually, it is the date/time when the FCSession last performed a database roundtrip.

**Example**

The following example shows when the current user 's FCSession was last updated

**JavaScript:**
```
Response.Write("FCSession Update Time = " + FCSession.UpdateTime);
```