### ProviderName Property (DbProvider)

A general provider type or key to classify this provider

Syntax

```vbnet
'Declaration

Public MustOverride ReadOnly Property ProviderName As String
```

```csharp
public abstract string ProviderName {get;}
```

#### Property Value

A general provider type or key to classify this provider

Remarks

This value may be different than the key specified in the application configuration file. For example, the ODP.NET provider for Oracle can use the key "ODPNET", however, its provider name is equivalent to the [DbProviderFactory.ORACLE_PROVIDER_NAME Constant](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ORACLE_PROVIDER_NAME.md) value. This is so that providers can be put into general types or categorizations which makes it easier for application developers to formulate proper SQL statements for that database type.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)