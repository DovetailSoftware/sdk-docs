### ProviderNames Property

Gets the list of available provider names/alias that can be used for displaying to the user or as an argument for the [CreateProvider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider(String).md) method.

#### Syntax

```vbnet
'Declaration

Public Shared ReadOnly Property ProviderNames As String()
```

```csharp
public static string[] ProviderNames {get;}
```

#### Property Value

An array of strings where each element is a valid provider name/alias such as "MSSQL" or "ORACLE".

#### Remarks

Both intrinsic and configured provider names are included in this array. For more information on configuring custom data providers, see the guide to [Configuring Custom Data Providers](/articles/configuring-database-providers.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)