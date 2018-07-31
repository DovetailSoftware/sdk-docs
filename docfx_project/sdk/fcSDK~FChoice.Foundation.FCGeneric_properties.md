### FCGeneric Class Properties

For a list of all members of this type, see [FCGeneric members](fcSDK~FChoice.Foundation.FCGeneric_members.md).

#### Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ChildGenerics](fcSDK~FChoice.Foundation.FCGeneric~ChildGenerics.md) | Returns a dictionary (keyed by parent to child relation name) of child generics belonging to this **FCGeneric**.   |
| ![Public Property](dotnetimages/publicProperty.png) | [Count](fcSDK~FChoice.Foundation.FCGeneric~Count.md) | Returns the number of rows currently populated by the [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) or [AddNew](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddNew.md) methods.   |
| ![Public Property](dotnetimages/publicProperty.png) | [DataFields](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md) | Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked. If no fields are selected all fields are returned.   |
| ![Public Property](dotnetimages/publicProperty.png) | [DataRestrictionsEnabled](fcSDK~FChoice.Foundation.FCGeneric~DataRestrictionsEnabled.md) | 
Sets whether or not this **FCGeneric** will have the DataRestrictions feature enabled if available.

  |
| ![Public Property](dotnetimages/publicProperty.png) | [DeleteRelationsToUnrelate](fcSDK~FChoice.Foundation.FCGeneric~DeleteRelationsToUnrelate.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [Filter](fcSDK~FChoice.Foundation.FCGeneric~Filter.md) | This is the root filter used to constrain rows returned during [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operations. Initially there are no filters present with filters being added using the [AddFilter](fcSDK~FChoice.Foundation.Filters.LogicalFilter~AddFilter.md) method.   |
| ![Public Property](dotnetimages/publicProperty.png) | [IncludeRelations](fcSDK~FChoice.Foundation.FCGeneric~IncludeRelations.md) | Queries will retrieve all relation fields for the Generic   |
| ![Public Property](dotnetimages/publicProperty.png) | [IsDistinct](fcSDK~FChoice.Foundation.FCGeneric~IsDistinct.md) | Is this a Generic that should query for only discinct rows.   |
| ![Public Property](dotnetimages/publicProperty.png) | [IsSynchronized](fcSDK~FChoice.Foundation.FCGeneric~IsSynchronized.md) | Gets a value indicating whether access to the **FCGeneric** is synchronized (thread-safe).   |
| ![Public Property](dotnetimages/publicProperty.png) | [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) | Controls the maximum number of rows to be returned by the Genric Query.   |
| ![Public Property](dotnetimages/publicProperty.png) | [QueryEmptyToNull](fcSDK~FChoice.Foundation.FCGeneric~QueryEmptyToNull.md) | 

Sets whether or not this **FCGeneric** will convert filters on empty strings into filters on [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) that check IS NULL or IS NOT NULL.

  |
| ![Public Property](dotnetimages/publicProperty.png) | [RawFilter](fcSDK~FChoice.Foundation.FCGeneric~RawFilter.md) | 

Sets an optional WHERE clause constraint. (**WARNING:** See remarks for potential security implications)

  |
| ![Public Property](dotnetimages/publicProperty.png) | [RestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~RestrictionGroup.md) | Override the Session Data Restriction Group of this Generic. The [ChangeRestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~ChangeRestrictionGroup.md) method is available as a helper.   |
| ![Public Property](dotnetimages/publicProperty.png) | [SearchableFieldPrefix](fcSDK~FChoice.Foundation.FCGeneric~SearchableFieldPrefix.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [SetNullStringsToEmpty](fcSDK~FChoice.Foundation.FCGeneric~SetNullStringsToEmpty.md) | Sets whether or not this **FCGeneric** will convert a null reference (**Nothing** in Visual Basic) to empty strings.   |
| ![Public Property](dotnetimages/publicProperty.png) | [SyncRoot](fcSDK~FChoice.Foundation.FCGeneric~SyncRoot.md) | Gets an object that can be used to synchronize access to the **FCGeneric**.   |
| ![Public Property](dotnetimages/publicProperty.png) | [TableName](fcSDK~FChoice.Foundation.FCGeneric~TableName.md) | Returns the name of the database table this FCGeneric is based on.   |





#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)