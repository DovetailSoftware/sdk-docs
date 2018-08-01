_GetServerTimeZoneOffset_
-------------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetServerTimeZoneOffset() As Long
```

#### Description

This method returns the number of seconds the server time zone is offset from GMT.  The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

**Returns**

The offset of the server time zone from GMT, in seconds.

**Example**

The following example displays the offset for the server time zone.

**JavaScript:**
```
The server time zone is <%=FCApp.ServerTimeZone%>.

The server time zone offset, in seconds =

<%=FCApp.GetServerTimeZoneOffset %>
```