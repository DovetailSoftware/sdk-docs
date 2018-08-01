_GetHgbstElmObjid_
---------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetHgbstElmObjid(ByVal TheElement As String,
	ByVal ListName As String, Optional ByVal Element1 As String = "", Optional ByVal Element2 As String = "", Optional ByVal Element3 As String = "", Optional ByVal Element4 As String = "") As Long
```

#### Description

This method returns the hgbst_elm.objid value for a given element in a given level of a user-defined list. You may use up to a 5-level list. The hgbst tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheElement | Yes | The element to get the objid for. |
| ListName | Yes | The user-defined list name. |
| Element1 | No | The parent element for TheElement, if TheElement is in a 2 level list. Else, the parent element for Element2. |
| Element2 | No | The parent element for TheElement, if TheElement is in a 3 level list. Else, the parent element for Element3. |
| Element3 | No | The parent element for TheElement, if TheElement is in a 4 level list. Else, the parent element for Element4. |
| Element4 | No | The parent element for TheElement, if TheElement is in a 5 level list. |

**Returns**

The hgbst_elm.objid value for a given element in a given level of a user-defined list.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 10008 | ListName must not be empty. |
| 10009 | Invalid ListName. |
| 10015 | Invalid Element for List. |

#### Examples

The following example displays an objid for different elements in different levels of the FAMILY user-defined list.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

The objid for 'Operating Systems' in 'Family:Software':

<%=FCApp.GetHgbstElmObjid("Operating Systems", "Family","Software")%>

<BR>

The objid for 'Operating Systems' in 'Family:Bad Level':<BR>

Note that this will cause an error to be thrown.<BR>

<%

try {

  FCApp.GetHgbstElmObjid("Operating Systems", "Family", "Bad Level") }

catch (e) {

  Response.Write(e.description); }

%>

The following example retrieves the objids the first, 2nd, and 3rd levels of the CR_DESC user-defined list.

The first level item is "PC", and the 2nd level item is "Windows 3.1", and the 3rd level item is "16m".

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim ElmObjid1 As Long

Dim ElmObjid2 As Long

Dim ElmObjid3 As Long

ElmObjid1 = fc_app.GetHgbstElmObjid("PC", "CR_DESC")

ElmObjid2 = fc_app.GetHgbstElmObjid("Windows 3.1", "CR_DESC", "PC")

ElmObjid3 = fc_app.GetHgbstElmObjid("16m", "CR_DESC", "PC", _

                                    "Windows 3.1")