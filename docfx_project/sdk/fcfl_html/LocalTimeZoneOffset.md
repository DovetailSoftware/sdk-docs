_LocalTimeZoneOffset_
---------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public Property Get LocalTimeZoneOffset() As Long
```

#### Description

This read-only property returns the number of seconds the local time zone is offset from GMT.

**Returns**

A string containing the local time zone offset of the FCSession.

**Example**

The following example displays and sets the local time zone and offset.

**JavaScript:**
```
The Server Time Zone is <%=FCApp.ServerTimeZone%>.<BR>
The Local Time Zone = <%=FCSession.LocalTimeZone%>.<BR>
The Local Time Zone Offset = <%=FCSession.LocalTimeZoneOffset%> seconds.<BR>

<%
var TZ = "Eastern Standard Time";
FCSession.LocalTimeZone = TZ; 
%>

The Local Time Zone is now = <%=FCSession.LocalTimeZone%>.<BR>
The Local Time Zone Offset is now = <%=FCSession.LocalTimeZoneOffset%> seconds.<BR>
```