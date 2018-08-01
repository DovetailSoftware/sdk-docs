_GetDefaultCountry_
-------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetDefaultCountry() As String
```

#### Description

This method returns the name of the default country. The default country is defined by the is_default flag on the country table. The country table is cached in the FCApplication object, so this method does not cause a database round-trip.

**Returns**

A string containing the name of the default country. If a country has not been set as the default, an empty string will be returned.

**Example**

The following example builds a drop-down list of countries. The default country is selected.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

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