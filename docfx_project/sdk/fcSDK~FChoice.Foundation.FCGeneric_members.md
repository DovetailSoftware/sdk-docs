### FCGeneric Class Members

The following tables list the members exposed by [FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md).

#### Public Fields

|   | Name | Description |
| --- | --- | --- |
| ![Public Field](dotnetimages/publicField.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [MAX_DATE](fcSDK~FChoice.Foundation.FCGeneric~MAX_DATE.md) | Maximum possible date that is allowed to be entered for a date field.   |
| ![Public Field](dotnetimages/publicField.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [MIN_DATE](fcSDK~FChoice.Foundation.FCGeneric~MIN_DATE.md) | Minimum possible date that is allowed to be entered for a date field.   |
| ![Public Field](dotnetimages/publicField.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [NOW_DATE](fcSDK~FChoice.Foundation.FCGeneric~NOW_DATE.md) | When date fields are set to this value the current server datetime will be entered instead.   |



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



#### Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) | Overloaded. Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a numeric [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).   |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilterBetween](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween.md) | Overloaded. Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Integer values.   |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilterInList](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList.md) | Overloaded. Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible Integer values**.**   |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendFilterIsNull](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterIsNull.md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against NULL or NOT NULL fields.   |
| ![Public Method](dotnetimages/publicMethod.png) | [AppendSort](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) | Overloaded. Adds a field by which the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) will be sorted.   |
| ![Public Method](dotnetimages/publicMethod.png) | [AssignObjID](fcSDK~FChoice.Foundation.FCGeneric~AssignObjID.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [ChangeRestrictionGroup](fcSDK~FChoice.Foundation.FCGeneric~ChangeRestrictionGroup.md) | Change the Data Restriction Group of this generic instance overriding the Session default. This method is a helper for when you only know the name of the restriction group.   |
| ![Public Method](dotnetimages/publicMethod.png) | [ClearFilters](fcSDK~FChoice.Foundation.FCGeneric~ClearFilters.md) | Clears all filters that have been [appended](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) to this generic.   |
| ![Public Method](dotnetimages/publicMethod.png) | [ClearSorts](fcSDK~FChoice.Foundation.FCGeneric~ClearSorts.md) | Clears all sort operations that have been [appended](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) to this generic.   |
| ![Public Method](dotnetimages/publicMethod.png) | [CopyTo](fcSDK~FChoice.Foundation.FCGeneric~CopyTo.md) | Copies all the rows of the current **FCGeneric** into to a one-dimensional [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemarrayclasstopic.htm).   |
| ![Public Method](dotnetimages/publicMethod.png) | [DeleteAll](fcSDK~FChoice.Foundation.FCGeneric~DeleteAll.md) | Delete all rows present in this **FCGeneric**.   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetEnumerator](fcSDK~FChoice.Foundation.FCGeneric~GetEnumerator.md) | Returns an [IEnumerator](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemcollectionsienumeratorclasstopic.htm) for the FCGeneric.   |
| ![Public Method](dotnetimages/publicMethod.png) | [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) | Overloaded. Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders   |
| ![Public Method](dotnetimages/publicMethod.png) | [Update](fcSDK~FChoice.Foundation.FCGeneric~Update.md) | Overloaded. Updates changes to a single [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md)   |
| ![Public Method](dotnetimages/publicMethod.png) | [UpdateAll](fcSDK~FChoice.Foundation.FCGeneric~UpdateAll.md) | Overloaded. Updates all modified rows of the **FCGeneric**.   |



Public Events

|   | Name | Description |
| --- | --- | --- |
| ![Public Event](dotnetimages/publicEvent.png) | [MaximumRowsExceeded](fcSDK~FChoice.Foundation.FCGeneric~MaximumRowsExceeded_EV.md) | This event is fired when the [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) property is set and a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operation has returned too many rows.   |





#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)