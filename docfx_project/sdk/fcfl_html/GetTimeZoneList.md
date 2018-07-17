_GetTimeZoneList_
-----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetTimeZoneList() As ADODB.Recordset

**Description**

This method returns a recordset containing the time_zone records

The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

When finished with the returned recordset, you should close the recordset using the .Close method and then set your variable to Nothing or Null. This will release the resources needed for this object.

**Returns**

An ADO recordset containing the time_zone  records.

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

<%

TZList.Close();

TZList = null;

%>