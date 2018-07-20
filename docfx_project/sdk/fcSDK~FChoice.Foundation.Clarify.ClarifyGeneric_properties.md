### ClarifyGeneric Class Properties

For a list of all members of this type, see [ClarifyGeneric members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md).

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ChildGenerics](/sdk/fcSDK~FChoice.Foundation.FCGeneric~ChildGenerics.md) | Gets an [IDictionary](ms-help://MS.NETFrameworkSDK/cpref/html/frlrfSystemCollectionsIDictionaryClassTopic.htm) of associated child generics keyed by their relation from the parent (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Count](/sdk/fcSDK~FChoice.Foundation.FCGeneric~Count.md) | Returns the number of rows currently populated by the [Query](/sdk/fcSDK~FChoice.Foundation.FCGeneric~Query.md) or [AddNew](/sdk/fcSDK~FChoice.Foundation.FCGeneric~AddNew.md) methods. (Inherited from [FChoice.Foundation.FCGeneric](/sdk/fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DataFields](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md) | Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked. If no fields are selected all fields are returned. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DataRestrictionsEnabled](fcSDK~FChoice.Foundation.FCGeneric~DataRestrictionsEnabled.md) | 
Sets whether or not this **FCGeneric** will have the DataRestrictions feature enabled if available.

(Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~DataSet.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [DeleteRelationsToUnrelate](fcSDK~FChoice.Foundation.FCGeneric~DeleteRelationsToUnrelate.md) | (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Filter](fcSDK~FChoice.Foundation.FCGeneric~Filter.md) | This is the root filter used to constrain rows returned during [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operations. Initially there are no filters present with filters being added using the [AddFilter](fcSDK~FChoice.Foundation.Filters.LogicalFilter~AddFilter.md) method. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [IncludeRelations](fcSDK~FChoice.Foundation.FCGeneric~IncludeRelations.md) | Queries will retrieve all relation fields for the Generic (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [IsDistinct](fcSDK~FChoice.Foundation.FCGeneric~IsDistinct.md) | Is this a Generic that should query for only discinct rows. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [IsSynchronized](fcSDK~FChoice.Foundation.FCGeneric~IsSynchronized.md) | Gets a value indicating whether access to the **FCGeneric** is synchronized (thread-safe). (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Item](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Item.md) | Gets the [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) at the specified index in this [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)   |
| ![Public Property](dotnetimages/publicProperty.png) | [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) | Controls the maximum number of rows to be returned by the Genric Query. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [ParentGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~ParentGeneric.md) | Gets a reference to the parent [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) if this generic is a child   |
| ![Public Property](dotnetimages/publicProperty.png) | [ParentRelation](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~ParentRelation.md) | Gets a reference to the [ISchemaRelation](fcSDK~FChoice.Foundation.Schema.ISchemaRelation.md) schema object which represents the relation used to traverse from the [ParentGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~ParentGeneric.md)   |
| ![Public Property](dotnetimages/publicProperty.png) | [QueryEmptyToNull](fcSDK~FChoice.Foundation.FCGeneric~QueryEmptyToNull.md) | 

Sets whether or not this **FCGeneric** will convert filters on empty strings into filters on [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) that check IS NULL or IS NOT NULL.

(Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RawFilter](fcSDK~FChoice.Foundation.FCGeneric~RawFilter.md) | 

Sets an optional WHERE clause constraint. (**WARNING:** See remarks for potential security implications)

(Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~RestrictionGroup.md) | Override the Session Data Restriction Group of this Generic. The [ChangeRestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~ChangeRestrictionGroup.md) method is available as a helper. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Rows](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Rows.md) | Gets a reference to the [ClarifyRowCollection](fcSDK~FChoice.Foundation.Clarify.ClarifyRowCollection.md) which contains all the rows queried for this generic   |
| ![Public Property](dotnetimages/publicProperty.png) | [SchemaTable](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SchemaTable.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [SearchableFieldPrefix](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SearchableFieldPrefix.md) | Overridden.    |
| ![Public Property](dotnetimages/publicProperty.png) | [Session](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Session.md) | Gets a reference to the parent [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) of this generic.   |
| ![Public Property](dotnetimages/publicProperty.png) | [SetNullStringsToEmpty](fcSDK~FChoice.Foundation.FCGeneric~SetNullStringsToEmpty.md) | Sets whether or not this **FCGeneric** will convert a null reference (**Nothing** in Visual Basic) to empty strings. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [SyncRoot](fcSDK~FChoice.Foundation.FCGeneric~SyncRoot.md) | Gets an object that can be used to synchronize access to the **FCGeneric**. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [TableName](fcSDK~FChoice.Foundation.FCGeneric~TableName.md) | Returns the name of the database table this FCGeneric is based on. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |





#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)