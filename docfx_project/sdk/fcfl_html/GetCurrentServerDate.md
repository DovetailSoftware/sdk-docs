_GetCurrentServerDate_
----------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function GetCurrentDate() As Date
```

#### Description

This method returns the current **_server time zone-based_** date and time.

**Returns**

This method returns the current **_server time zone-based_** date and time.

**Example**

The following example displays the current server time.

**JavaScript:**
```
Response.Write("<BR>current server time = " + FCSession.GetCurrentServerDate());
```