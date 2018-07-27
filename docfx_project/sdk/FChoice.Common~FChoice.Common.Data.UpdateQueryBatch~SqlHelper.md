### SqlHelper Property

Gets the instance of a [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) class that is used by this batch to manage parameters and execute statements

#### Syntax

```vbnet
'Declaration

Public ReadOnly Property SqlHelper As SqlHelper
```

```csharp
public SqlHelper SqlHelper {get;}
```

#### Property Value

The instance of a [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) class that is used by this batch to manage parameters and execute statements

#### Remarks

While it is possible to change properties, add/remove parameters, and change providers and other properties on this instance, it could cause instability during the batching process and is not recommended.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)