_GetCountryList_
----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetCountryList() As ADODB.Recordset
```

#### Description

This method returns a recordset containing the country records

The country table is cached in the FCApplication object, so this method does not cause a database round-trip.

When finished with the returned recordset, you should close the recordset using the .Close method and then set your variable to Nothing or Null. This will release the resources needed for this object.

**Returns**

An ADO recordset containing the country  records.

**Example**

The following example builds a drop-down list of countries. The default country is selected.

**JavaScript:**
```
<SELECT NAME="Country">
<%
var defCountry = FCApp.GetDefaultCountry();
var CountryList = FCApp.GetCountryList();
while (! CountryList.EOF) { %>
  <option
  <% if (CountryList("name") == defCountry) { %>
  selected = true <% } %> >
  <%=CountryList("name")%>
  <% CountryList.MoveNext; %>
  </option>
<% } %>
</SELECT>

<%
CountryList.Close();
CountryList = null;
%>
```