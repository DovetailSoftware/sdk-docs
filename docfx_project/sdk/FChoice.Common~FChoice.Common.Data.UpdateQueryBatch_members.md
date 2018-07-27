### UpdateQueryBatch Class Members

The following tables list the members exposed by [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md).

Public Constructors

|   | Name | Description |
| --- | --- | --- |
| ![Public Constructor](dotnetimages/publicConstructor.png) | [UpdateQueryBatch Constructor](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~_ctor.md) | Overloaded.    |



#### Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [CommandText](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~CommandText.md) | Gets the current command text that will be executed when the [Execute Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) is called   |
| ![Public Property](dotnetimages/publicProperty.png) | [Parameters](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Parameters.md) | Gets the collection of all parameters for all queries to be executed by this batch   |
| ![Public Property](dotnetimages/publicProperty.png) | [Provider](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Provider.md) | Gets the provider that this batch is using   |
| ![Public Property](dotnetimages/publicProperty.png) | [SqlHelper](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~SqlHelper.md) | Gets the instance of a [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) class that is used by this batch to manage parameters and execute statements   |
| ![Public Property](dotnetimages/publicProperty.png) | [Transaction](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Transaction.md) | Gets the transaction specified when this UpdateQueryBatch instance was created   |



#### Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [AddStatement](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~AddStatement.md) | Adds an unprepared SQL statement (with the _{n}_ and _{DATE}_ parameters still present) to the list of statements to execute during the batch or executes it immediately if batching is not available or disabled   |
| ![Public Method](dotnetimages/publicMethod.png) | [Execute](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) | Executes the batch if the provider supports statement batching, or nothing if it doesn't   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetUniqueParamName](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~GetUniqueParamName.md) | Gets a unique parameter name among all the parameters for all the queries in this batch based off a suggested base name   |





#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)