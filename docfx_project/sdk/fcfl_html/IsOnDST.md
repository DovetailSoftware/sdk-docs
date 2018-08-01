_IsOnDST_
---------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function IsOnDST(ByVal TheTimeZone As String, ByVal TheDate As Date) As Boolean
```

#### Description

This method returns a boolean indicating if the given date in the given time zone is on DST (Daylight Savings Time). This is done by examining the daylight_hr data from the database. The time_zone and daylight_hr tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheTimeZone | Yes | Name of time zone. |
| TheDate | Yes | Date to be checked. |

**Returns**

A boolean value indicating if the given time in the given time zone is on DST.

**Example**

The following example checks if the current database time is on DST.

**JavaScript:**
```
Are we currently on DST?

<%=FCApp.IsOnDST(FCApp.ServerTimeZone,FCSession.GetCurrentDate()) %>
```