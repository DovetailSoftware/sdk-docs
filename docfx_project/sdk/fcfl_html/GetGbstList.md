_GetGbstList_
-------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetGbstList(ByVal ListName As String) As ADODB.Recordset

**Description**

This method returns a recordset containing the gbst_elm records for a given gbst_lst.

An error is thrown if an empty or invalid is given.

The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

When finished with the returned recordset, you should close the recordset using the .Close method and then set your variable to Nothing or Null. This will release the resources needed for this object.

#### Parameters
**Parameter Name**                **Required?**             **Description**

ListName                               Yes                         An Application popup list name.

**Returns**

An ADO recordset containing the gbst_elm records for the ListName list.

**Error Codes**

**Value**                **Meaning**

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

**Example**

The following builds a drop-down list of case types.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<SELECT NAME="CaseType">

<%

var CaseTypeList = FCApp.GetGbstList("Case Type");

while (! CaseTypeList.EOF) { %>

  <option

  <% if (CaseTypeList("state") == 2) { %>

         selected = true <% } %> >

  <%=CaseTypeList("title")%>

  <% CaseTypeList.MoveNext; %>

  </option>

<% } %>

</SELECT>

<%

CaseTypeList.Close();

CaseTypeList = null;

%>