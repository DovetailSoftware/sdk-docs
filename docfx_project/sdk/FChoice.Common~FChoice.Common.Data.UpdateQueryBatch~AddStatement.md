### AddStatement Method

An unprepared SQL statement (with the _{n}_ and _{DATE}_ parameters still present)

A collection of parameters to use with the supplied _sqlStmt_ parameter. The number of parameters must match the number of _{n}_ arguments in the SQL statement. Each parameter in the collection must have a unique name with respect to all the other parameters in all the other queries in this batch. To guarantee uniqueness among parameters, see the [GetUniqueParamName Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~GetUniqueParamName.md).

Adds an unprepared SQL statement (with the _{n}_ and _{DATE}_ parameters still present) to the list of statements to execute during the batch or executes it immediately if batching is not available or disabled

#### Syntax

```vbnet
'Declaration

Public Sub AddStatement( _
   ByVal _sqlStmt_ As String, _
   ByVal _cmdParams_ As DataParameterCollection _
) 
```

```csharp
public void AddStatement( 
   string _sqlStmt_,
   DataParameterCollection _cmdParams_
)
```

#### Parameters

_sqlStmt_

An unprepared SQL statement (with the _{n}_ and _{DATE}_ parameters still present)

_cmdParams_

A collection of parameters to use with the supplied _sqlStmt_ parameter. The number of parameters must match the number of _{n}_ arguments in the SQL statement. Each parameter in the collection must have a unique name with respect to all the other parameters in all the other queries in this batch. To guarantee uniqueness among parameters, see the [GetUniqueParamName Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~GetUniqueParamName.md).

#### Remarks

Once added, the statement is rewritten to make the parameter names unique among all the statements. Once added a statement cannot be removed. The entire batch must be discarded and rebuilt.

If the specified provider for this batch returns false from its [CanBatchQueries](FChoice.Common~FChoice.Common.Data.DbProvider~CanBatchQueries.md) property, the statement will be executed immediately and not added to a batch. No statement will be added to a "batch". Subsequent calls to the [Execute Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) will not perform any operations against the database and return a -2 for number of rows affected.

If the specified provider returns true from its [CanBatchQueries](FChoice.Common~FChoice.Common.Data.DbProvider~CanBatchQueries.md) property, this statement will be added to the list of statements to execute in the batch when the [Execute Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~Execute.md) is called.

**IMPORTANT**: The UpdateQueryBatch does not commit or rollback the transaction instance. It is the responsibility of the caller to ensure that the transaction is properly set up and finished after the batch is executed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)