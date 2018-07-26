### CreateProvider(String) Method

A provider alias that matches one of the intrinsic provider aliases, one configured in the application configuration file, or a null reference (**Nothing** in Visual Basic) for the default alias

Creates a new instance of a DbProvider object from the specified provider alias

Syntax

```vbnet
'Declaration

Public Overloads Shared Function CreateProvider( _
   ByVal _providerAlias_ As String _
) As DbProvider
```

```csharp
public static DbProvider CreateProvider( 
   string _providerAlias_
)
```

#### Parameters

_providerAlias_

A provider alias that matches one of the intrinsic provider aliases, one configured in the application configuration file, or a null reference (**Nothing** in Visual Basic) for the default alias

#### Return Value

A new DbProvider instance configured for the given alias

Exceptions

| Exception | Description |
| --- | --- |
| CommonException | Error Code 5012 No provider with the specified alias is configured |

Remarks

The two intrinsic aliases are the values for the two constants: [DbProviderFactory.MSSQL_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~MSSQL_PROVIDER_NAME.md) and DbProviderFactory.ORACLE_PROVIDER_NAME. To configure additional aliases, please see the guide to [Configure Custom Data Providers](/articles/configuring-database-providers.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider.md)