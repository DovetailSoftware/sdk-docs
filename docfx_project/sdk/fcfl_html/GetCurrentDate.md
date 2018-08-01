_GetCurrentDate_
----------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function GetCurrentDate() As Date
```

#### Description

This method returns the current local time zone date and time.

**Returns**

This method returns the current date and time in the **_local_** time zone.

**Example**

The following example displays the current local time.

**JavaScript:**
```
Response.Write("<BR>current session time = " + FCSession.GetCurrentDate());
```