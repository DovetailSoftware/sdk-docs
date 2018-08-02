_GetGbstDefault_ or _GetGbstLocalizedDefault_
---------------------------------------------

**Object and Type**

Object : FCApplication

Type : Method

**Prototype**

```
Public Function GetGbstDefault(ByVal ListName As String) As String
```

```
Public Function GetLocalizedGbstDefault(ByVal ListName As String) As String
``` 

#### Description

GetGbstDefault - This method returns the default string value for a given Application Popup list.

GetLocalizedGbstDefault - This method returns the default string value for a given Application Popup list for the FCSession's current culture.

The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| ListName | Yes | An Application popup list name. |

**Returns**

The default value for this list, if one is defined. Else, the first value in the list.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 10008 | ListName must not be empty. |
| 10009 | Invalid ListName. |

#### Examples

The following example displays the default Case Type.

**JavaScript:**
```
<%
var defCaseType = FCApp.GetGbstDefault("Case Type");
%>

Default Case Type= <%=defCaseType%>
```