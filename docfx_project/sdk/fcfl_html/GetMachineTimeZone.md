_GetMachineTimeZone_
--------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Property Get GetMachineTimeZone() As String

**Description**

This method returns a string indicating the time zone of the machine running the First Choice Foundation Library. This method uses a Win32 API call to retrieve the time zone. This may not exactly coordinate with a time zone in the Clarify database time_zone table.

**Returns**

A string indicating the time zone of the machine running the First Choice Generic Business Objects.

**Example**

The following sets the server time zone to be the machine time zone.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

The server time zone is <%=FCApp.ServerTimeZone%>.<BR>

The machine time zone is <%=FCApp.GetMachineTimeZone%>.<BR>

<% FCApp.SetServerTimeZoneToMachineTimeZone(); %>

The server time zone is now <%=FCApp.ServerTimeZone%>.<BR>