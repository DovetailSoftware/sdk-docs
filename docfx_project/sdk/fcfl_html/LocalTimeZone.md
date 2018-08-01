_LocalTimeZone_
------------
**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public Property Get LocalTimeZone() As String
```

```
Public Property Let LocalTimeZone(ByVal NewTimeZone As String)
```

#### Description

This property retrieves or sets the local time zone. The local time zone represents the time zone of the FCSession. By default, the local time zone is the same as the FCApplication.ServerTimeZone property.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| NewTimeZone | Yes | The name of time zone. |

**Returns**

A string containing the local time zone of the FCSession. |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 11007 | Invalid time_zone. |

#### Examples

The following example displays and sets the local time zone.

**JavaScript:**
```
The Server Time Zone is <%=FCApp.ServerTimeZone%>.<BR>
The Local Time Zone = <%=FCSession.LocalTimeZone%>.<BR>

<%
var TZ = "Eastern Standard Time";
FCSession.LocalTimeZone = TZ; 
%>

The Local Time Zone is now = <%=FCSession.LocalTimeZone%>.<BR>
```