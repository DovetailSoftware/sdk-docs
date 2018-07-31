_GetTimeZoneOffset_
-------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetTimeZoneOffset(ByVal TimeZone As String) As Long

**Description**

This method returns the number of seconds the given time zone is offset from GMT. If the time zone is not found, this method returns a value of zero. The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name**                **Required?**             **Description**

TimeZone                              Yes                         Name of time zone to get the offset for.

**Returns**

The offset of the time zone from GMT, in seconds. Zero, if the time zone is not found.

**Example**

The following example retrieves the offset for a time zone.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<%

var TZ = "Eastern Standard Time";

var TZOffset = FCApp.GetTimeZoneOffset(TZ);

%>

<%=TZ%> is <%=TZOffset%> seconds ahead of GMT.