### RequiresDbNameParameter Property (DbProvider)

Gets whether or not this provider requires the "dbname" argument for the [CreateConnectionString Method](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md)

#### Syntax

```vbnet
'Declaration

Public MustOverride ReadOnly Property RequiresDbNameParameter As Boolean
```

```csharp
public abstract bool RequiresDbNameParameter {get;}
```

#### Property Value

Whether or not this provider requires the "dbname" argument for the [CreateConnectionString Method](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md)

#### Remarks

This property is helpful for application developers writing utilities and user interfaces for collecting database connection information from a user in a database-agnostic way. This allows programmatic control on whether a "DB Name:" field should be displayed or not.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)