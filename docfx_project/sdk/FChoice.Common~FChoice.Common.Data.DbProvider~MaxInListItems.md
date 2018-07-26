### MaxInListItems Property (DbProvider)

Gets the maximum number of items the underlying database type supports in an IN() or NOT IN() SQL clause

Syntax

```vbnet
'Declaration

Public MustOverride ReadOnly Property MaxInListItems As Integer
```

```csharp
public abstract int MaxInListItems {get;}
```

#### Property Value

The maximum number of items the underlying database type supports in an IN() or NOT IN() SQL clause

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)