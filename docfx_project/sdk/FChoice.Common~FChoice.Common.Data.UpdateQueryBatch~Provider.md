### Provider Property (UpdateQueryBatch)

Gets the provider that this batch is using

Syntax

```vbnet
'Declaration

Public ReadOnly Property Provider As DbProvider
```

```csharp
public DbProvider Provider {get;}
```

#### Property Value

The provider that this batch is using

Remarks

This value is read-only to prevent changing providers in the middle of a batch process. Note that the provider on the [SqlHelper Property](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~SqlHelper.md) can be changed. This might have adverse effects on the batching process and is not recommended.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)