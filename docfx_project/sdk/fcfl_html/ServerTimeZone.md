### ServerTimeZone

**Object and Type**

Object  : FCApplication

Type     : Property

**Prototype**

```
Public Property Get ServerTimeZone() As String
```

```
public Property Let ServerTimeZone(ByVal NewTimeZone As String)
```

#### Description

This property allows the server time zone to be set or read. When the FCApplication is initialized, this property is initially set to the default time zone in the database.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| NewTimeZone | Yes | When setting the server time zone, the time zone full_name that it should be set to. |

**Returns**

The full_name of the server time zone.

**Example**

The following example shows how to read and set the server time zone property.

**JavaScript:**
```
The server time zone is currently <%=FCApp.ServerTimeZone%>.<BR>
<%
	var NewTZ = "Eastern Standard Time";
	FCApp.ServerTimeZone = NewTZ
%>

The server time zone is now <%=FCApp.ServerTimeZone%>.
```