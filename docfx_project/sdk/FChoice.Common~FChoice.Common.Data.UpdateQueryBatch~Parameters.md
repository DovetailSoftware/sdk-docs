### Parameters Property (UpdateQueryBatch)

Gets the collection of all parameters for all queries to be executed by this batch

Syntax

```vbnet
'Declaration

Public ReadOnly Property Parameters As DataParameterCollection
```

```csharp
public DataParameterCollection Parameters {get;}
```

#### Property Value

The collection of all parameters for all queries to be executed by this batch or the parameters used by the last query executed during the last call to the [AddStatement Method](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~AddStatement.md) if the provider does not support batching.

Remarks

While the parameters in this collection can be manipulated, this could cause instability during the batching process and is not recommended.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)