_GetShortTimeZoneObjid_
-----------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Function GetShortTimeZoneObjid(ByVal TimeZone As String) As Long
```

#### Description

This method returns an objid for a given time zone. If the time zone is not found, this method returns a value of zero. The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

**Note**: The time zone used should be the short time zone ("CST") instead of the long one ("Central Time Zone").

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TimeZone | Yes | Name of time zone to get the objid for. |

**Returns**

The objid of the time zone. Zero, if the time zone is not found.

**Example**

The following example retrieves the objid for a time zone.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var TimeZone = Request.Form("TZ").Item;

var TimeZoneObjid = FCApp.GetShortTimeZoneObjid(TimeZone);