_GetStates_
-----------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetStates(ByVal Country As String) As ADODB.Recordset

**Description**

This method returns a recordset containing the state_prov records for a given country.

The state_prov and country tables are cached in the FCApplication object, so this method does not cause a database round-trip.

When finished with the returned recordset, you should close the recordset using the .Close method and then set your variable to Nothing or Null. This will release the resources needed for this object.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

Country                                 Yes                         Name of country to get the states for.

**Returns**

An ADO recordset containing the state_prov  records.

**Error Codes**

**Value                                     Meaning                                                                                                                               **

10011                                      Country must not be empty.

10012                                      Invalid Country

**Example**

The following example builds a drop-down list of states for the default. The default state is selected.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<SELECT NAME="States">

<%

var defCountry = FCApp.GetDefaultCountry();

var StateList = FCApp.GetStates(defCountry);

var defState = FCApp.GetDefaultState(defCountry);

while (! StateList.EOF) { %>

  <option

  <% if (StateList("name") == defState) { %>

  selected = true <% } %> >

  <%=StateList("name")%>

  <% StateList.MoveNext; %>

  </option>

<% } %>

</SELECT>

<%

StateList.Close();

StateList = null;

%>