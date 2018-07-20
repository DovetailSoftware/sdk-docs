### ClarifyGeneric Class Methods

For a list of all members of this type, see [ClarifyGeneric members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md).

Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [AddForUpdate](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddForUpdate(Int32).md) | 
Creates a new row in the **ClarifyGeneric** with the specified [objId](fcSDK~FChoice.Foundation.GenericDataRow~UniqueID.md) which will be used to update an existing row in the database rather than inserting a new one.

  |
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





#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)