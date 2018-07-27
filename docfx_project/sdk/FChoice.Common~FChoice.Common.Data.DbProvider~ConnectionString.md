### ConnectionString Property (DbProvider)

Gets or sets the connection string this provider will use for database connections

#### Syntax

```vbnet
'Declaration
Public Overridable Property ConnectionString As String
```

```csharp
public virtual string ConnectionString {get; set;}
```

#### Property Value

The connection string this provider will use for database connections

#### Remarks

This value is normally the value specified in the application configuration file. However, it can be set to another connection string at which point the provider will use the newly specified value.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)