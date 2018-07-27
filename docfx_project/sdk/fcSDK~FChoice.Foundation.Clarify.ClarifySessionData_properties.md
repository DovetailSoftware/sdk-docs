### ClarifySessionData Class Properties

For a list of all members of this type, see [ClarifySessionData members](fcSDK~FChoice.Foundation.Clarify.ClarifySessionData_members.md).

#### Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ConfigItems](fcSDK~FChoice.Foundation.FCSessionData~ConfigItems.md) | Collection of CRM session configuration items. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [ConvertTimeZone](fcSDK~FChoice.Foundation.FCSessionData~ConvertTimeZone.md) | Session option: Gets whether or not any [DateTimes](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDateTimeClassTopic.htm) will be translated to and from [ServerTimeZone](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ServerTimeZone.md) and [LocalTimeZone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md). Default value is **false**. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [CreationTime](fcSDK~FChoice.Foundation.FCSessionData~CreationTime.md) | Timestamp when the session was created. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [CurrentCulture](fcSDK~FChoice.Foundation.FCSessionData~CurrentCulture.md) | The Culture being used by the session. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [CurResGroup](fcSDK~FChoice.Foundation.FCSessionData~CurResGroup.md) | The restriction group being used by the session. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DefaultDistinctGenerics](fcSDK~FChoice.Foundation.FCSessionData~DefaultDistinctGenerics.md) | Session option which makes Generics have [IsDistinct](fcSDK~FChoice.Foundation.FCGeneric~IsDistinct.md) enable by default. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DisableDataConversion](fcSDK~FChoice.Foundation.FCSessionData~DisableDataConversion.md) | Session option which disables data conversions when values are set for [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow~Item.md) fields. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DisableRestrictions](fcSDK~FChoice.Foundation.FCSessionData~DisableRestrictions.md) | Returns whether or not the DataRestrictions feature is enabled or disabled. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [EmptyNullStrings](fcSDK~FChoice.Foundation.FCSessionData~EmptyNullStrings.md) | Session option that cues [Generics](fcSDK~FChoice.Foundation.FCGeneric.md) to make Null fields be empty strings. Specifically for Oracle. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [IncludeRelations](fcSDK~FChoice.Foundation.FCSessionData~IncludeRelations.md) | Session option that cues [Generics](fcSDK~FChoice.Foundation.FCGeneric.md) to include all relation data fields during [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [IsDirty](fcSDK~FChoice.Foundation.FCSessionData~IsDirty.md) | (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [LastLoadTime](fcSDK~FChoice.Foundation.FCSessionData~LastLoadTime.md) | Timestamp when the session was last loaded via [GetSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~GetSession.md) (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [LocalTimeZone](fcSDK~FChoice.Foundation.FCSessionData~LocalTimeZone.md) | The [TimeZone](fcSDK~FChoice.Foundation.DataObjects.ITimeZone.md) being used by the session. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [LoginTime](fcSDK~FChoice.Foundation.FCSessionData~LoginTime.md) | (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [LoginType](fcSDK~FChoice.Foundation.FCSessionData~LoginType.md) | User login type (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [MaximumRows](fcSDK~FChoice.Foundation.FCSessionData~MaximumRows.md) | (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [NewSession](fcSDK~FChoice.Foundation.FCSessionData~NewSession.md) | (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [PasswordRequired](fcSDK~FChoice.Foundation.FCSessionData~PasswordRequired.md) | Session option denoting whether a password was used to create a session. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Permissions](fcSDK~FChoice.Foundation.FCSessionData~Permissions.md) | (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [PrivatePassword](fcSDK~FChoice.Foundation.Clarify.ClarifySessionData~PrivatePassword.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [QueryEmptyToNull](fcSDK~FChoice.Foundation.FCSessionData~QueryEmptyToNull.md) | Session option that cues [Generics](fcSDK~FChoice.Foundation.FCGeneric.md) to convert filters on empty strings into filters on [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) that check Is NULL or IS NOT NULL. (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [SessionData](fcSDK~FChoice.Foundation.FCSessionData~SessionData.md) | CRM configurable session data populates this property during [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md) (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [SessionID](fcSDK~FChoice.Foundation.FCSessionData~SessionID.md) | 
A session's unique identifier.

(Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [TruncateStringFields](fcSDK~FChoice.Foundation.FCSessionData~TruncateStringFields.md) | Session option that cues [Generics](fcSDK~FChoice.Foundation.FCGeneric.md) to truncate strings that exceed database field lengths when assigned to a [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow~Item.md) (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [UserID](fcSDK~FChoice.Foundation.FCSessionData~UserID.md) | UniqueID of the user that created the [Session](fcSDK~FChoice.Foundation.FCSession.md). (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [UserName](fcSDK~FChoice.Foundation.FCSessionData~UserName.md) | Name of the user that created the [Session](fcSDK~FChoice.Foundation.FCSession.md). (Inherited from [FChoice.Foundation.FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md)) |





#### Reference

[ClarifySessionData Class](fcSDK~FChoice.Foundation.Clarify.ClarifySessionData.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)