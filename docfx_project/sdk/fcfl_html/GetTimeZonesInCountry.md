_GetTimeZonesInCountry_
-----------------------

**Object and Type**

Object : FCApplication

Type : Method

**Prototype**

Public Function GetTimeZonesInCountry(ByVal Country As String)

  As ADODB.Recordset

**Description**

This method returns a recordset containing the list time_zone records for the given country.

When finished with the returned recordset, you should close the recordset using the .Close method and then set your variable to Nothing or Null. This will release the resources needed for this object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| Country | Yes | Country Name |

**Returns**

A recordset containing the list time_zone records for the given country.

**Example**

**Visual Basic:**

The code in this example is written in Visual Basic.

The following example populates a drop-down list of time zones for a particular country

Sub FillTZ(TheCountry)

                   ' Clear the existing list

ddl_timezone.Clear

                   'Get the List of TimeZones

                   'Fill into the drop-down list

                   'Save the First Time Zone for this country

                   'Close the recordset

Dim TZList As ADODB.Recordset

Set TZList = FCApp.GetTimeZonesInCountry(TheCountry)

FirstTZ = "" If Not TZList.EOF Then

  FirstTZ = TZList("full_name")

End If

While Not TZList.EOF

  ddl_timezone.AddItem TZList("full_name")

  TZList.MoveNext

Wend

TZList.Close

TZList = Nothing

                          'Get the Default Time Zone

                          'If the default TimeZone is in this country

                          'Then set this one to be selected

                          'Else, set the first time zone to be selected

defTZ = FCApp.GetDefaultTimeZone If FCApp.IsTimeZoneInCountry(TheCountry, defTZ, True) Then

  ddl_timezone.Text = defTZ

Else

  If FirstTZ <> "" Then ddl_timezone.Text = FirstTZ

End If

End Sub