_GetHgbstList_
--------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetHgbstList  (ByVal ListName As String,

Optional ByVal Element1 As String = "", Optional ByVal Element2 As String = "", Optional ByVal Element3 As String = "", Optional ByVal Element4 As String = "") As ADODB.Recordset

**Description**

This method returns an ADO recordset containing the records for a given level of a user-defined list. You may use up to a 5-level list. The hgbst tables are cached in the FCApplication object, so this method does not cause a database round-trip.

When finished with the returned recordset, you should close the recordset using the .Close method and then set your variable to Nothing or Null. This will release the resources needed for this object.

#### Parameters
**Parameter Name**                **Required?**             **Description**

ListName                               Yes                         The user-defined list name.

Element1                                No                           The parent element for TheElement, if TheElement is in a 2

level list. Else, the parent element for Element2.

Element2                                No                           The parent element for TheElement, if TheElement is in a 3

level list. Else, the parent element for Element3.

Element3                                No                           The parent element for TheElement, if TheElement is in a 4

level list. Else, the parent element for Element4.

Element4                                No                           The parent element for TheElement, if TheElement is in a 5

level list.

**Returns**

An ADO recordset containing the records for a given level of a user-defined list.

**Error Codes**

**Value**                **Meaning**

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

**Example**

The following example displays the Family:Software user-defined list, and sets the default value to be selected.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

FAMILY:SOFTWARE:

<SELECT NAME="FAMILY2">

<%

var def = FCApp.GetHgbstElmDefault("FAMILY","Software");

var TheList = FCApp.GetHgbstList("FAMILY","Software");

while (! TheList.EOF) { %>

  <option

  <% if (TheList("title") == def) { %>

  selected = true <% } %> >

  <%=TheList("title")%>

  <% TheList.MoveNext; %>

  </option>

<% } %>

</SELECT>

<%

TheList.Close();

%>}