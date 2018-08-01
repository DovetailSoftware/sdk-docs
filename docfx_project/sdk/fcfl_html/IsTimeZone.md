_IsTimeZone_
------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function IsTimeZone(ByVal TimeZone As String) As Boolean
```

#### Description

This method returns a boolean indicating if the given time zone is a valid time zone in the database.  The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TimeZone | Yes | Name of time zone to be validated. |

**Returns**

A boolean value indicating if the given time zone is found in the database or not. 

**Example**

The following example checks is a given value from a posted form is a valid time zone.

**JavaScript:**
```
var time_zone = Request.Form("timezone").Item; If (FCApp.IsTimeZone(time_zone))
 { Response.Write(time_zone + " is a valid time_zone."); }
else
 { Response.Write(time_zone + " is NOT a valid time_zone."); }
```