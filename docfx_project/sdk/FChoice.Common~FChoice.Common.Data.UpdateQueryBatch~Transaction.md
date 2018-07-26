### Transaction Property (UpdateQueryBatch)

Gets the transaction specified when this UpdateQueryBatch instance was created

Syntax

```vbnet
'Declaration

Public ReadOnly Property Transaction As IDbTransaction
```

```csharp
public IDbTransaction Transaction {get;}
```

#### Property Value

The transaction specified when this UpdateQueryBatch instance was created

Remarks

**IMPORTANT**: The UpdateQueryBatch does not commit or rollback the transaction instance. It is the responsibility of the caller to ensure that the transaction is properly set up and finished after the batch is executed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)