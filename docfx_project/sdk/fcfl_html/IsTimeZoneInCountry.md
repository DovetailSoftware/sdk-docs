_IsTimeZoneInCountry_
---------------------

**Object and Type**

Object : FCApplication

Type : Method

**Prototype**

Public Function IsTimeZoneInCountry(ByVal Country As String,

                                    ByVal TimeZone As String,

ByVal IsFullName As Boolean)

As Boolean

**Description**

This method returns a boolean indicating if the given time zone is valid for the given country. The time zone and country tables are cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| Country | Yes | Country Name |
| TimeZone | Yes | TimeZone name or TimeZone Full Name |
| IsFullName | Yes | Boolean indicating if the TimeZone is the name or the Full name. |

**Returns**

A boolean value indicating if the given time zone is valid for the given country.

**Example**

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

The following example checks if a given time zone is valid for the given country using the (short) name of the time zone.

var country = "USA"

var time_zone = "PST" If (FCApp.IsTimeZoneInCountry(country,time_zone,false)) {

  Response.Write(time_zone + " is valid for " + country); }

else {

  Response.Write (time_zone + " is NOT valid for " + country); }

The following example checks if a given time zone is valid for the given country using the full_name of the time zone.

var country = "United Kingdom"

var time_zone = "Greenwich Mean Time" If (FCApp.IsTimeZoneInCountry(country,time_zone,true)) {

  Response.Write (time_zone + " is valid for " + country); }

else {

  Response.Write (time_zone + " is NOT valid for " + country); }