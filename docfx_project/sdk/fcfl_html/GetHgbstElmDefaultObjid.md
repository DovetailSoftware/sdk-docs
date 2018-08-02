_GetHgbstElmDefaultObjid_
----------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetHgbstElmDefaultObjid(ByVal ListName As String,
		Optional ByVal Element1 As String = "", Optional ByVal Element2 As String = "", Optional ByVal Element3 As String = "", Optional ByVal Element4 As String = "") As Long
```

#### Description

This method returns the hgbst_elm.objid value for the default element in a given level of a user-defined list. You may use up to a 5-level list. If an default element has not been defined, then the first element is returned. The hgbst tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| ListName | Yes | The user-defined list name. |
| Element1 | No | The parent element for TheElement, if TheElement is in a 2 level list. Else, the parent element for Element2. |
| Element2 | No | The parent element for TheElement, if TheElement is in a 3 level list. Else, the parent element for Element3. |
| Element3 | No | The parent element for TheElement, if TheElement is in a 4 level list. Else, the parent element for Element4. |
| Element4 | No | The parent element for TheElement, if TheElement is in a 5 level list. |

**Returns**

The hgbst_elm.objid value for the default element in a given level of a user-defined list.  If the list for this level is empty, -1 is returned.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 10008 | ListName must not be empty. |
| 10009 | Invalid ListName. |

#### Examples

The following example displays the default element objid for different elements in different levels of the FAMILY user-defined list.

**JavaScript:**
```
The default element objid for 'Family:Software':
<%=FCApp.GetHgbstElmDefaultObjid("Family","Software")%>
<BR>
The default element objid for 'Operating Systems' in 'Family:Bad Level':<BR>
Note that this will cause an error to be thrown.<BR>

<%
try{
	FCApp.GetHgbstElmDefaultObjid("Family", "Bad Level")
}
catch (e) {
	Response.Write(e.description);
}
%>
```