### UpdateQueryBatch Class Methods

For a list of all members of this type, see [UpdateQueryBatch members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md).

#### Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [AddStatement](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~AddStatement.md) | Adds an unprepared SQL statement (with the _{n}_ and _{DATE}_ parameters still present) to the list of statements to execute during the batch or executes it immediately if batching is not available or disabled   |
| ![Public Method](dotnetimages/publicMethod.png) | [Execute](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) | Executes the batch if the provider supports statement batching, or nothing if it doesn't   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetUniqueParamName](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~GetUniqueParamName.md) | Gets a unique parameter name among all the parameters for all the queries in this batch based off a suggested base name   |





#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)