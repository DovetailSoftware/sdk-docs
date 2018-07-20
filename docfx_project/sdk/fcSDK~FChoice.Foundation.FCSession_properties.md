### FCSession Class Properties

For a list of all members of this type, see [FCSession members](fcSDK~FChoice.Foundation.FCSession_members.md).

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ConfigItems](fcSDK~FChoice.Foundation.FCSession~ConfigItems.md) | Collection of CRM session configuration items.   |
| ![Public Property](dotnetimages/publicProperty.png) | [ConvertTimeZone](fcSDK~FChoice.Foundation.FCSession~ConvertTimeZone.md) | Sets whether or not any [DateTimes](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDateTimeClassTopic.htm) will be translated to and from [ServerTimeZone](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ServerTimeZone.md) and [LocalTimeZone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md). Default value is **false**.   |
| ![Public Property](dotnetimages/publicProperty.png) | [CreationTime](fcSDK~FChoice.Foundation.FCSession~CreationTime.md) | Timestamp when the session was created.   |
| ![Public Property](dotnetimages/publicProperty.png) | [CurrentCulture](fcSDK~FChoice.Foundation.FCSession~CurrentCulture.md) | Returns the [Culture](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconcultureinfo.htm) being used by the session.   |
| ![Public Property](dotnetimages/publicProperty.png) | [DataRestrictionsEnabled](fcSDK~FChoice.Foundation.FCSession~DataRestrictionsEnabled.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [DefaultCulture](fcSDK~FChoice.Foundation.FCSession~DefaultCulture.md) | Returns the default [Culture](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconcultureinfo.htm) being used by the session.   |
| ![Public Property](dotnetimages/publicProperty.png) | [DefaultDistinctGenerics](fcSDK~FChoice.Foundation.FCSession~DefaultDistinctGenerics.md) | 
Sets whether or not newly created generic objects will have IsDistinct set to include all relation data fields during [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md).

  |
| ![Public Property](dotnetimages/publicProperty.png) | [DisableDataConversions](fcSDK~FChoice.Foundation.FCSession~DisableDataConversions.md) | Sets whether data conversions happen when [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow~Item.md) fields are modified.   |
| ![Public Property](dotnetimages/publicProperty.png) | [IncludeRelations](fcSDK~FChoice.Foundation.FCSession~IncludeRelations.md) | Sets whether or not newly created generic objects will include all relation data fields during [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md).   |
| ![Public Property](dotnetimages/publicProperty.png) | [Item](fcSDK~FChoice.Foundation.FCSession~Item.md) | Get or set session data indexed by specified key.   |
| ![Public Property](dotnetimages/publicProperty.png) | [Items](fcSDK~FChoice.Foundation.FCSession~Items.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [LastLoadTime](fcSDK~FChoice.Foundation.FCSession~LastLoadTime.md) | Timestamp when the session was last loaded via [FCApplication.GetSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetSession.md)   |
| ![Public Property](dotnetimages/publicProperty.png) | [LocalTimeZone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md) | The [TimeZone](fcSDK~FChoice.Foundation.DataObjects.ITimeZone.md) being used by the session.   |
| ![Public Property](dotnetimages/publicProperty.png) | [Log](fcSDK~FChoice.Foundation.FCSession~Log.md) | Returns a [Logger](FChoice.Common~FChoice.Common.Logger.md) useful for logging application events or errors to the logging system.   |
| ![Public Property](dotnetimages/publicProperty.png) | [LoginType](fcSDK~FChoice.Foundation.FCSession~LoginType.md) | Returns the login type of the logged-in user.   |
| ![Public Property](dotnetimages/publicProperty.png) | [MaximumRows](fcSDK~FChoice.Foundation.FCSession~MaximumRows.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [PasswordRequired](fcSDK~FChoice.Foundation.FCSession~PasswordRequired.md) | Gets whether or not a password was used when [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md) was called.   |
| ![Public Property](dotnetimages/publicProperty.png) | [QueryEmptyToNull](fcSDK~FChoice.Foundation.FCSession~QueryEmptyToNull.md) | 

Sets whether or not new newly created generic objects  convert filters on empty strings into filters on [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) that check Is NULL or IS NOT NULL.

  |
| ![Public Property](dotnetimages/publicProperty.png) | [RestrictionGroup](fcSDK~FChoice.Foundation.FCSession~RestrictionGroup.md) | Returns the data restriction group being used by the session.   |
| ![Public Property](dotnetimages/publicProperty.png) | [SessionData](fcSDK~FChoice.Foundation.FCSession~SessionData.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [SessionID](fcSDK~FChoice.Foundation.FCSession~SessionID.md) | 

Returns the session's unique identifier.

  |
| ![Public Property](dotnetimages/publicProperty.png) | [SetNullStringsToEmpty](fcSDK~FChoice.Foundation.FCSession~SetNullStringsToEmpty.md) | Sets whether or not newly created generic objects will convert a null reference (**Nothing** in Visual Basic) to empty strings.   |
| ![Public Property](dotnetimages/publicProperty.png) | [TruncateStringFields](fcSDK~FChoice.Foundation.FCSession~TruncateStringFields.md) | Sets whether or not newly created generic objects will truncate string fields if they are too long.   |
| ![Public Property](dotnetimages/publicProperty.png) | [UserID](fcSDK~FChoice.Foundation.FCSession~UserID.md) | Returns the unique identifier for the session's logged-in user.   |
| ![Public Property](dotnetimages/publicProperty.png) | [UserName](fcSDK~FChoice.Foundation.FCSession~UserName.md) | Returns the login name for the session's logged-in user.   |





#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)