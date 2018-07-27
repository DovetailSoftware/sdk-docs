### ClarifyGeneric Class Members

The following tables list the members exposed by [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md).

#### Public Fields

|   | Name | Description |
| --- | --- | --- |
| ![Public Field](dotnetimages/publicField.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [GuidColumnName](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~GuidColumnName.md) |   |

#### Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ChildGenerics](fcSDK~FChoice.Foundation.FCGeneric~ChildGenerics.md) | Gets an [IDictionary](ms-help://MS.NETFrameworkSDK/cpref/html/frlrfSystemCollectionsIDictionaryClassTopic.htm) of associated child generics keyed by their relation from the parent (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Count](fcSDK~FChoice.Foundation.FCGeneric~Count.md) | Returns the number of rows currently populated by the [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) or [AddNew](/sdk/fcSDK~FChoice.Foundation.FCGeneric~AddNew.md) methods. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DataFields](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md) | Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked. If no fields are selected all fields are returned. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [DataRestrictionsEnabled](fcSDK~FChoice.Foundation.FCGeneric~DataRestrictionsEnabled.md) | 
Sets whether or not this **FCGeneric** will have the DataRestrictions feature enabled if available. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
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
| ![Public Property](dotnetimages/publicProperty.png) | [QueryEmptyToNull](fcSDK~FChoice.Foundation.FCGeneric~QueryEmptyToNull.md) | Sets whether or not this **FCGeneric** will convert filters on empty strings into filters on [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) that check IS NULL or IS NOT NULL. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RawFilter](fcSDK~FChoice.Foundation.FCGeneric~RawFilter.md) | Sets an optional WHERE clause constraint. (**WARNING:** See remarks for potential security implications) (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~RestrictionGroup.md) | Override the Session Data Restriction Group of this Generic. The [ChangeRestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~ChangeRestrictionGroup.md) method is available as a helper. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Rows](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Rows.md) | Gets a reference to the [ClarifyRowCollection](fcSDK~FChoice.Foundation.Clarify.ClarifyRowCollection.md) which contains all the rows queried for this generic   |
| ![Public Property](dotnetimages/publicProperty.png) | [SchemaTable](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SchemaTable.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [SearchableFieldPrefix](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SearchableFieldPrefix.md) | Overridden.    |
| ![Public Property](dotnetimages/publicProperty.png) | [Session](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Session.md) | Gets a reference to the parent [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) of this generic.   |
| ![Public Property](dotnetimages/publicProperty.png) | [SetNullStringsToEmpty](fcSDK~FChoice.Foundation.FCGeneric~SetNullStringsToEmpty.md) | Sets whether or not this **FCGeneric** will convert a null reference (**Nothing** in Visual Basic) to empty strings. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [SyncRoot](fcSDK~FChoice.Foundation.FCGeneric~SyncRoot.md) | Gets an object that can be used to synchronize access to the **FCGeneric**. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [TableName](fcSDK~FChoice.Foundation.FCGeneric~TableName.md) | Returns the name of the database table this FCGeneric is based on. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |

#### Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [AddForUpdate](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddForUpdate(Int32).md) | 
Creates a new row in the **ClarifyGeneric** with the specified [objId](fcSDK~FChoice.Foundation.GenericDataRow~UniqueID.md) which will be used to update an existing row in the database rather than inserting a new one. |
| ![Public Method](dotnetimages/publicMethod.png) | [AddNew](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddNew.md) | Overloaded. Adds a new row and schedules it for creation in the database when [Update](fcSDK~FChoice.Foundation.FCGeneric~Update.md) is called   |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) | Overloaded. Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a numeric [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md). (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilterBetween](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween.md) | Overloaded. Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Integer values. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilterInList](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList.md) | Overloaded. Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible Integer values**.** (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilterIsNull](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterIsNull.md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against NULL or NOT NULL fields. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendSort](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) | Overloaded.  (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [AssignAllObjIDs](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AssignAllObjIDs(ClarifyDataRow[]).md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [AssignObjID](fcSDK~FChoice.Foundation.FCGeneric~AssignObjID.md) | (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [ChangeRestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~ChangeRestrictionGroup.md) | Change the Data Restriction Group of this generic instance overriding the Session default. This method is a helper for when you only know the name of the restriction group. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [ClearFilters](fcSDK~FChoice.Foundation.FCGeneric~ClearFilters.md) | Clears all filters that have been [appended](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) to this generic. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [ClearSorts](fcSDK~FChoice.Foundation.FCGeneric~ClearSorts.md) | Clears all sort operations that have been [appended](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) to this generic. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [CopyTo](fcSDK~FChoice.Foundation.FCGeneric~CopyTo.md) | Copies all the [rows](/sdk/fcSDK~FChoice.Foundation.FCGeneric~Rows.md) of the current **FCGeneric** into to a one-dimensional [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemarrayclasstopic.htm). (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [DeleteAll](fcSDK~FChoice.Foundation.FCGeneric~DeleteAll.md) | Delete all [rows](/sdk/fcSDK~FChoice.Foundation.FCGeneric~Rows.md) present in this **FCGeneric**. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [DeleteById](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~DeleteById.md) | Deletes the row in the table with the specified objid   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetEnumerator](fcSDK~FChoice.Foundation.FCGeneric~GetEnumerator.md) | Returns an [IEnumerator](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemcollectionsienumeratorclasstopic.htm) for the FCGeneric. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [Query](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Query.md) | Overloaded. Overridden. Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders   |
| ![Public Method](dotnetimages/publicMethod.png) | [Traverse](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Traverse(String).md) | Creates a child generic that is related to this generic through the specified relation   |
| ![Public Method](dotnetimages/publicMethod.png) | [TraverseFromParent](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~TraverseFromParent.md) | Makes this generic a child that is related to the specified parent generic through the specified relation   |
| ![Public Method](dotnetimages/publicMethod.png) | [TraverseFromRoot](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~TraverseFromRoot.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [Update](fcSDK~FChoice.Foundation.FCGeneric~Update.md) | Overloaded. Updates changes to a single [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [UpdateAll](fcSDK~FChoice.Foundation.FCGeneric~UpdateAll.md) | Overloaded. Updates all modified rows of the **FCGeneric**. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |

Public Events

|   | Name | Description |
| --- | --- | --- |
| ![Public Event](dotnetimages/publicEvent.png) | [MaximumRowsExceeded](fcSDK~FChoice.Foundation.FCGeneric~MaximumRowsExceeded_EV.md) | This event is fired when the [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) property is set and a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operation has returned too many rows. (Inherited from [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)) |

#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)