### GenericDataRow Class Members

The following tables list the members exposed by [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md).

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [ForcedUpdateColumns](fcSDK~FChoice.Foundation.GenericDataRow~ForcedUpdateColumns.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [HasErrors](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Property](dotnetimages/publicProperty.png) | [IsAddForUpdate](fcSDK~FChoice.Foundation.GenericDataRow~IsAddForUpdate.md) | Gets a value indicating whether this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) was added via [AddForUpdate](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddForUpdate.md).   |
| ![Public Property](dotnetimages/publicProperty.png) | [IsNew](fcSDK~FChoice.Foundation.GenericDataRow~IsNew.md) | Gets a value indicating whether the current [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) was [added](/sdk/fcSDK~FChoice.Foundation.FCGeneric~AddNew.md) and not yet [committed](fcSDK~FChoice.Foundation.FCGeneric~Update.md).   |
| ![Public Property](dotnetimages/publicProperty.png) | [Item](fcSDK~FChoice.Foundation.GenericDataRow~Item.md) |   |
| ![Public Property](dotnetimages/publicProperty.png) | [ItemArray](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RowError](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RowGuid](fcSDK~FChoice.Foundation.GenericDataRow~RowGuid.md) | Unique row identifier   |
| ![Public Property](dotnetimages/publicProperty.png) | [RowState](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Property](dotnetimages/publicProperty.png) | [Table](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Property](dotnetimages/publicProperty.png) | [UniqueID](fcSDK~FChoice.Foundation.GenericDataRow~UniqueID.md) | Returns Unique Identifier of this row in the database.   |



Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [AcceptChanges](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [AreIDsEqual](fcSDK~FChoice.Foundation.GenericDataRow~AreIDsEqual.md) | Used to compare the [UniqueIDs](fcSDK~FChoice.Foundation.GenericDataRow~UniqueId.md) of two GenericDataRows.   |
| ![Public Method](dotnetimages/publicMethod.png) | [BeginEdit](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [CancelEdit](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [ClearErrors](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [Delete](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [EndEdit](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetChildRows](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetColumnError](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetColumnsInError](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetParentRow](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetParentRows](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [HasVersion](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [IsForcedUpdateColumn](fcSDK~FChoice.Foundation.GenericDataRow~IsForcedUpdateColumn.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [IsNull](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [RejectChanges](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [RelateByID](fcSDK~FChoice.Foundation.GenericDataRow~RelateByID.md) | Relate a unique identifier to this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) via a [SchemaRelation](fcSDK~FChoice.Foundation.Schema.ISchemaRelation.md) name.   |
| ![Public Method](dotnetimages/publicMethod.png) | [RelateRecord](fcSDK~FChoice.Foundation.GenericDataRow~RelateRecord.md) | Relate a given row to this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) via a [SchemaRelation](fcSDK~FChoice.Foundation.Schema.ISchemaRelation.md) name.   |
| ![Public Method](dotnetimages/publicMethod.png) | [RelateToIntField](fcSDK~FChoice.Foundation.GenericDataRow~RelateToIntField.md) | Relate a given row's identifier to an Integer field present on this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md).   |
| ![Public Method](dotnetimages/publicMethod.png) | [SetAdded](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [SetColumnError](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [SetModified](#) | (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [SetParentRow](#) | Overloaded.  (Inherited from [System.Data.DataRow](#)) |
| ![Public Method](dotnetimages/publicMethod.png) | [Unrelate](fcSDK~FChoice.Foundation.GenericDataRow~Unrelate.md) | UnRelate this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) from a single row related to it via the given relation name.   |
| ![Public Method](dotnetimages/publicMethod.png) | [UnrelateFromAll](fcSDK~FChoice.Foundation.GenericDataRow~UnrelateFromAll.md) | UnRelate this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) from all other rows related to it via the given relation name.   |
| ![Public Method](dotnetimages/publicMethod.png) | [Update](fcSDK~FChoice.Foundation.GenericDataRow~Update.md) | Overloaded. Commits the row to the database. See FCGeneric's [Update](fcSDK~FChoice.Foundation.FCGeneric~Update(GenericDataRow).md) for details.   |





#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)