create_time_zone
------------------

Public Function create_time_zone(ByVal time_zone As String, _

                                 ByVal full_name As String, _

                                 ByVal country As String, _

                                 ByVal gmt_diff As Long) As Integer

**Description**

This API creates a time zone in the Clarify database, and relates it to a country. If the time zone is not found in the database, a new time zone record is created.

#### Parameters
**Parameter Name**                **Required?**             **Description**

time_zone                              Yes                         Time zone name

full_name                               No                           Full name of the time zone

country                                  Yes                         The country to link the time zone to

gmt_diff                                 No                           The number of seconds (positive or negative) that the time zone is off of

GMT

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No time zone name supplied

-2                                             Cannot find the specified country name

-3                                             The supplied time zone is already defined for the country

ret_objid                                Output                   Returns the objid of the new time zone

**Examples**

 Add a new time zone of 'FST' for the USA that is 14400 seconds off of GMT.

**Visual Basic:**

Dim ret_int  As Integer

Dim tz_objid As Long

ret_int = fcinter.create_time_zone("FST", "Foo Standard Time", _

                                   "USA", 14400)

 If ret_int = 0 Then

      tz_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_time_zone("FST", "Foo Standard Time",

                                       "USA", 14400);

 if (ret_int == 0){ var tz_objid = fcinter.ret_objid; }