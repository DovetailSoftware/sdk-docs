### ClarifyApplication Class Members

The following tables list the members exposed by [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md).

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ClarifyVersion](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ClarifyVersion.md) | Gets a string which describes the version of Clarify that [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) is currently running against.   |
| ![Public Property](dotnetimages/publicProperty.png) | [ConfigItemCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ConfigItemCache.md) | Gets a reference to the [ConfigItemCache](fcSDK~FChoice.Foundation.Clarify.ConfigItemCache.md) for accessing Clarify config items.   |
| ![Public Property](dotnetimages/publicProperty.png) | [ConfigItems](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ConfigItems.md) | Returns a dictionary that contains Clarify config item key/value pairs   |
| ![Public Property](dotnetimages/publicProperty.png) | [Configuration](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Configuration.md) | Collection of application parameters being used by the application object.   |
| ![Public Property](dotnetimages/publicProperty.png) | [ConvertTimeZone](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ConvertTimeZone.md) | Gets or sets whether or not to perform time zone conversions when operating with date/time values   |
| ![Public Property](dotnetimages/publicProperty.png) | [DatabaseVersion](fcSDK~FChoice.Foundation.FCApplication~DatabaseVersion.md) | (Inherited from [FChoice.Foundation.FCApplication](fcSDK~FChoice.Foundation.FCApplication.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DataRestrictionsEnabled](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~DataRestrictionsEnabled.md) | Gets whether or not First Choice Data Restriction technology is enabled for this Clarify database.   |
| ![Public Property](dotnetimages/publicProperty.png) | [DBUserName](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~DBUserName.md) | Name of the database user the application object is using to connect to the database.   |
| ![Public Property](dotnetimages/publicProperty.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [Instance](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Instance.md) | Returns the singleton instance of ClarifyApplication if initialized.   |
| ![Public Property](dotnetimages/publicProperty.png) | [IsDbUnicode](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~IsDbUnicode.md) | Gets whether or not any columns in the Clarify database are flagged as supporting Unicode characters.   |
| ![Public Property](dotnetimages/publicProperty.png) | [IsTravelerEnabled](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~IsTravelerEnabled.md) | Gets whether or not the Clarify Traveler product is installed and enabled for this database.   |
| ![Public Property](dotnetimages/publicProperty.png) | [ListCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ListCache.md) | Gets a reference to the [ListCache](fcSDK~FChoice.Foundation.Clarify.ListCache.md) which provides access to Clarify user defined and global lists   |
| ![Public Property](dotnetimages/publicProperty.png) | [LocaleCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~LocaleCache.md) | Gets a reference to the [LocaleCache](fcSDK~FChoice.Foundation.Clarify.LocaleCache.md) which provides access to city/state/country/time zone information.   |
| ![Public Property](dotnetimages/publicProperty.png) | [SchemaCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~SchemaCache.md) | Gets a reference to the [SchemaCache](fcSDK~FChoice.Foundation.Clarify.SchemaCache.md) which provides access to the Clarify ADP schema information   |
| ![Public Property](dotnetimages/publicProperty.png) | [ServerTimeZone](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ServerTimeZone.md) | Timezone being used by the application.   |
| ![Public Property](dotnetimages/publicProperty.png) | [StringCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~StringCache.md) | Gets a reference to the [StringCache](fcSDK~FChoice.Foundation.Clarify.StringCache.md) which provides access to the Clarify string DB table and First Choice FCStrings   |
| ![Public Property](dotnetimages/publicProperty.png) | [TruncateStringFields](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~TruncateStringFields.md) | Gets or sets whether or not to truncate string values if they are too large for the field or throw an error   |



Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [BeginInitialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~BeginInitialize.md) | Begins an asynchronous **ClarifyApplication** initialization.   |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md) | Overloaded. Creates a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) and logs in using the username and password for the application.   |
| ![Public Method](dotnetimages/publicMethod.png) | [CurrentSessions](fcSDK~FChoice.Foundation.FCApplication~CurrentSessions.md) | Provides a view into the FCApplication's currently running sessions. (Inherited from [FChoice.Foundation.FCApplication](fcSDK~FChoice.Foundation.FCApplication.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [EncryptClarifyPassword](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~EncryptClarifyPassword.md) | Generates a string using the same obfuscation algorithm that is compatible with the Clarify Thin Client.   |
| ![Public Method](dotnetimages/publicMethod.png) | [EncryptDBPassword](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~EncryptDBPassword.md) | Obfuscates a database password using the Clarify DB password obfuscation algorithm.   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [EndInitialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~EndInitialize.md) | Ends an asynchronous **ClarifyApplication** initialization.   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetMtmTableName](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetMtmTableName.md) | Returns the name of the physical MTM table for a given MTM relationship using the Clarify MTM naming conventions   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetObjID](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetObjID.md) | Gets the next objid for the given table   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [GetObjIdsFromFCStoredProcedure](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetObjIdsFromFCStoredProcedure.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetSession.md) | Retrieves an [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) previously created by [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md).   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md) | Overloaded. Initializes ClarifyApplication using the application configuration.   |
| ![Public Method](dotnetimages/publicMethod.png) | [IsSessionValid](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~IsSessionValid.md) |   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [ValidateEncryptedPassword](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ValidateEncryptedPassword.md) |   |



Public Events

|   | Name | Description |
| --- | --- | --- |
| ![Public Event](dotnetimages/publicEvent.png) | [InitializeStatusChange](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~InitializeStatusChange_EV.md) | Event fired during [Initialization](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md), relaying information about the current status of the initialization process.   |





#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)