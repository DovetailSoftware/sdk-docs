### CanBatchQueries Property

Specifies whether the underlying database type for this provider can support multiple SQL statements per database round-trip

#### Syntax

```vbnet
'Declaration

Public Overridable ReadOnly Property CanBatchQueries As Boolean
```

```csharp
public virtual bool CanBatchQueries {get;}
```

#### Property Value

Whether the underlying database type for this provider can support multiple SQL statements per database round-trip

#### Remarks

This value is normally the natural value according to the provider, but can be overridden by using the "fchoice.enablebatch" (or [ConfigValues.ENABLE_BATCH Field](FChoice.Common~FChoice.Common.ConfigValues~ENABLE_BATCH.md)) configuration parameter.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)