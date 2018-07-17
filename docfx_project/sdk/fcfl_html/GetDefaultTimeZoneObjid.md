_GetDefaultTimeZoneObjid_
-------------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetDefaultTimeZoneObjid() As Long

**Description**

This method returns the objid of the default time zone. The default time zone is defined by the is_default flag in the time_zone table. The time_zone table is cached in the FCApplication object, so this method does not cause a database round-trip.

**Returns**

A long integer containing the objid of the default time_zone. If a time_zone has not been set as the default, zero will be returned.

**Example**

The following example retrieves the objid of the default time_zone.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

//If the customer didn't give us a time zone, use the default

if (TimeZoneObjid == 0)

{

TimeZoneObjid = FCApp.GetDefaultTimeZoneObjid();

}