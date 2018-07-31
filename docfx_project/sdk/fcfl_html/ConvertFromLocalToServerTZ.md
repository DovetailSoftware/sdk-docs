_ConvertFromLocalToServerTZ_
----------------------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function ConvertFromLocalToServerTZ(ByVal TheDate As Date) As Date

**Description**

This property converts a date/time value from the local time zone to the server time zone. The local time zone is the time zone of the FCSession (FCSession.LocalTimeZone), and the server time zone is the server time zone of the FCApplication (FCApplication.ServerTimeZone). It uses the time_zone table date to determine offsets from GMT, and it uses the daylight_hr table to determine if the timestamp is on daylight savings time (DST) in either time zone.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| TheDate | Yes | The timestamp (date and time) to be converted |

**Returns**

A date/time value converted from the local time zone to the server time zone.

**Error Codes**

**Value**                **Meaning**

11008                                      Invalid Date/Time.

**Example**

The following example converts a timestamp from the local time zone to the server time zone.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<%

var CurrDate = FCSession.GetCurrentDate();

var NewDate = FCSession.ConvertFromLocalToServerTZ(CurrDate);

%>

The Server Time Zone is <%=FCApp.ServerTimeZone%>.<BR>

The Local Time Zone = <%=FCSession.LocalTimeZone%>.<BR>

If it is <%=CurrDate%> in <%=FCSession.LocalTimeZone%>, then

it is <%=NewDate%> in <%=FCApp.ServerTimeZone%>.