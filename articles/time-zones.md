# Time Zone Handling in the fcSDK

The **fcSDK** is "time zone aware" and can automatically convert date and time values into various time zones for you. In this mode, all time zones that you see (in your generic objects) are in the local time zone. The **fcSDK** automatically converts all date/time fields so that they are written to the database in the server's time zone. This way, different clients in different parts of the country (or world) will all write consistent date/times to the database. When you retrieve data via the fcSDK, all of the date/time fields will be converted to your local time zone, so that it appears correct to the application user.

Setting up time zone conversion is easy. There are three steps necessary for the **fcSDK** to display dates and times in the correct time zone for users using different time zones:

* **ClarifyApplication.ConvertTimeZone Property**
    ClarifySession has a property: ConvertTimeZone. If this property is set to "true" (which is the default), the **fcSDK** will perform time zone conversions for you any time date values are read from or stored to a ClarifyGeneric instance.
* **ClarifyApplication.ServerTimeZone**
    Represents the time zone the server will use for time zone conversion operations. By default the database default time zone will be used.
    
    The default ServerTimeZone can be changed by updating the time_zone record and refreshing the application cache:

    1. Update table_time_zone set is_default = 0
    1. Update table_time_zone set is_default = 1 where name = '<default_time_zone_name>'

    If you wish override the ServerTimeZone it is recommended that you do so before creating any ClarifySession objects.

* **ClarifySession.LocalTimeZone**
    When using the fcSDK, your application can specify on each session which time zone the user is in (usually this is done on the login form/web page). Simply set the LocalTimeZone property on the session to the appropriate time zone and date values will get converted according to the setting in the ConvertTimeZone property.

The date/time conversion handles all aspects of the fcSDK. For example, you can use the "NOW" date/time constant (ClarifyGeneric.NOW_DATE), and it will be converted properly. In addition, if you modify a "Change Field", the "Change Date" field will also be updated to the database properly converted.

For example, the following C# and Visual Basic.NET code illustrates the process.

### Example

This example shows how to set the server time zone and the user session time zone.

[C#] 
```
// Create and initialize the ClarifyApplication instance
ClarifyApplication app = ClarifyApplication.Initialize();
app.ServerTimeZone = app.LocaleCache.TimeZones[ "Pacific Standard Time", true ];

// Create a session using a different time zone
ClarifySession session = app.CreateSession("sa", "sa", ClarifyLoginType.User);
session.LocalTimeZone = app.LocaleCache.TimeZones[ "Eastern Standard Time", true ];

//Next, create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Now use **fcSDK** as normal
ClarifyGeneric gCase = dataSet.CreateGeneric("case");
gCase.AppendFilter( "id_number", StringOps.Equals, "55" );
gCase.Query();

// Will be shown in EST, 3 hours off of the time in the DB field
Debug.WriteLine( gCase[0]["creation_time"] );

ClarifyDataRow row = gCase.AddNew();

// This will be stored in the database three hours earlier (9:00)
row["x_date_field"] = new DateTime(2002, 1, 1, 12, 0, 0);
row.Update();

// You wouldn't do this normally, but now the date/time written to the
// db would be 12:00 (unconverted). Again, this is not recommended!
session.ConvertTimeZone = false;
ClarifyDataRow noConvertRow = gCase.AddNew();
noConvertRow["x_date_field"] = new DateTime(2002, 1, 1, 12, 0, 0);
noConvertRow.Update();
```

[Visual Basic] 
```
' Create an initialize the ClarifyApplication instance
Dim app As ClarifyApplication = ClarifyApplication.Initialize()
app.ServerTimeZone = app.LocaleCache.TimeZones("Pacific Standard Time", True)

' Create a session using a different time zone
Dim session As ClarifySession = app.CreateSession( "sa", "sa", ClarifyLoginType.User)
session.LocalTimeZone = app.LocaleCache.TimeZones( "Eastern Standard Time", True )

'Create the dataset which will contain the generics
Dim dataSet As New ClarifyDataSet(session)

' Now use **fcSDK** as normal
Dim gCase As ClarifyGeneric = dataSet.CreateGeneric("case")
gCase.AppendFilter( "id_number", StringOps.Equals, "55" )
gCase.Query()

' Will be shown in EST, 3 hours off of the time in the DB field
Debug.WriteLine( gCase(0)("creation_time") )

Dim row As ClarifyDataRow = gCase.AddNew()

' This will be stored in the database three hours earlier (9:00)
row("x_date_field") = New DateTime(2002, 1, 1, 12, 0, 0)
row.Update()

' You wouldn't do this normally, but now the date/time written to the
' db would be 12:00 (unconverted). Again, this is not recommended!
session.ConvertTimeZone = false
Dim noConvertRow As ClarifyDataRow = gCase.AddNew()
noConvertRow("x_date_field") = New DateTime(2002, 1, 2002, 12, 0, 0)
noConvertRow.Update()
```
