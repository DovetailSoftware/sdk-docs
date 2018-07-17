_SetServerTimeZoneToMachineTimeZone_
------------------------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Sub SetServerTimeZoneToMachineTimeZone()

**Description**

This property allows the server time zone to be set to the time zone of where the First Choice Generic Business Object is currently running. Typically, this will be a web server. The machine time zone is retrieved using standard Win32 API calls.                                           

**Example**

The following example shows how to read and set the server time zone to be the machine time zone.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

The server time zone is currently <%=FCApp.ServerTimeZone%>.<BR>

<%

var NewTZ = "Eastern Standard Time";

FCApp.ServerTimeZone = NewTZ

%>

The server time zone is now <%=FCApp.ServerTimeZone%>.<BR>

The machine time zone is <%=FCApp.GetMachineTimeZone%>.<BR>

<% FCApp.SetServerTimeZoneToMachineTimeZone(); %>

The server time zone is now <%=FCApp.ServerTimeZone%>.