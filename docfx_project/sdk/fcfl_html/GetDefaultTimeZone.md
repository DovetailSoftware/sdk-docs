_GetDefaultTimeZone_
--------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetDefaultTimeZone() As String

**Description**

This method returns the full_name of the default time zone. The default time zone is defined by the is_default flag on the time_zone table. The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

**Returns**

A string containing the full_name of the default time_zone. If a time_zone has not been set as the default, an empty string will be returned.

**Example**

The following example builds a drop-down list of time zones. The default time zone is selected.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<SELECT NAME="TZ">

<%

var defTZ = FCApp.GetDefaultTimeZone();

var TZList = FCApp.GetTimeZoneList();

while (! TZList.EOF) { %>

  <option

  <% if (TZList("full_name") == defTZ) { %>

  selected = true <% } %> >

  <%=TZList("full_name")%>

  <% TZList.MoveNext; %>

  </option>

<% } %>

</SELECT>