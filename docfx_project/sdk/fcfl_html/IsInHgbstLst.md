_IsInHgbstLst_
--------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function IsInHgbstList (ByVal TheElement As String,

ByVal ListName As String,

Optional ByVal Element1 As String = "", Optional ByVal Element2 As String = "", Optional ByVal Element3 As String = "", Optional ByVal Element4 As String = "") As Boolean

**Description**

This method returns a boolean value indicating if a given string is a valid element in a given  user-defined list. You may validate an element up to a 5-level list. The hgbst tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheElement | Yes | The element to be checked for its existence in the list. |
| ListName | Yes | The user-defined list name. |
| Element1 | No | The parent element for TheElement, if TheElement is in a 2 level list. Else, the parent element for Element2. |
| Element2 | No | The parent element for TheElement, if TheElement is in a 3 level list. Else, the parent element for Element3. |
| Element3 | No | The parent element for TheElement, if TheElement is in a 4 level list. Else, the parent element for Element4. |
| Element4 | No | The parent element for TheElement, if TheElement is in a 5 level list. |

**Returns**

True if the Element does exist in the ListName list. Else, False.

**Error Codes**

**Value**                **Meaning**

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

10015                                      Invalid Element for List.

**Example**

The following example verifies different elements in different levels of the FAMILY user-defined list.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages. is 'Operating Systems' a valid element in 'Family' ? <BR>

<%=FCApp.IsInHgbstList("Operating Systems", "Family")%> <BR> is 'Operating Systems' a valid element in 'Family:Software' ? <BR>

<%=FCApp.IsInHgbstList("Operating Systems", "Family", "Software")%><BR> is 'Windows' a valid element in 'Family:Software:Operating Systems' ?

<BR>

<%=FCApp.IsInHgbstList("Windows", "Family", "Software",

                       "Operating Systems")%> is 'Operating Systems' a valid element in 'Family:Bad Level' ? <BR>

Note that this will cause an error to be thrown.<BR>

<%

try {

  FCApp.IsInHgbstList("Operating Systems", "Family", "Bad Level") }

catch (e) {

  Response.Write(e.description); }

%>