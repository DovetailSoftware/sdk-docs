_GetDefaultState_
-----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetDefaultState(ByVal Country As String) As String

**Description**

This method returns a string containing the default state_prov name for a given country. If there is not a default state (indicated by the is_default field), then the name of the first state is returned.

The state_prov and country tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| Country | Yes | Name of country to get the default state for. |

**Returns**

A string containing the default state_prov name for a given country |

**Error Codes**

**Value**                **Meaning**

10011                                      Country must not be empty.

10012                                      Invalid Country |

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