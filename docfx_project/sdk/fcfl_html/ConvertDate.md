_ConvertDate_
-------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function ConvertDate(ByVal TheDate As Date, ByVal FromTimeZone As String, ByVal ToTimeZone As String) As Date

**Description**

This property converts a date/time value from one time zone to another. It uses the time_zone table date to determine offsets from GMT, and it uses the daylight_hr table to determine if the timestamp is on daylight savings time (DST) in either time zone.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

TheDate                                 Yes                         The timestamp (date and time) to be converted

FromZone                              Yes                         The name of the time zone that the date will be converted

from.

TomeZone                             Yes                         The name of the time zone that the date will be converted

to

**Returns**

A date/time value converted between time zones.

**Error Codes**

**Value                                     Meaning                                                                                                                               **

11007                                      Invalid time_zone.

11008                                      Invalid Date/Time.

**Example**

The following example converts a timestamp from one time zone to another.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<%

  var TZ1 = "Central Standard Time"

  var TZ2 = "Eastern Standard Time"

  var CurrDate = FCSession.GetCurrentDate();

  var NewDate = FCSession.ConvertDate(CurrDate, TZ1, TZ2);

%>

If it is <%=CurrDate%> in <%=TZ1%>, then

it is <%=NewDate%> in <%=TZ2%>.