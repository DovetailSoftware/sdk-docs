### GetAdapter() Method

Gets a database type-specific DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL) without any options set yet.

#### Syntax

```vbnet
'Declaration

Public Overloads MustOverride Function GetAdapter() As DbDataAdapter
```

```csharp
public abstract DbDataAdapter GetAdapter()
```

#### Return Value

A DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProvider~GetAdapter.md)