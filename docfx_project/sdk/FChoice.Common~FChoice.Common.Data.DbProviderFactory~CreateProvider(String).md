     CreateProvider(String) Method                                                   

CreateProvider(String) Method

A provider alias that matches one of the intrinsic provider aliases, one configured in the application configuration file, or a null reference (**Nothing** in Visual Basic) for the default alias

Creates a new instance of a [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) object from the specified provider alias

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function CreateProvider( _
   ByVal _providerAlias_ As String _
) As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)

public static [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) CreateProvider( 
   string _providerAlias_
)

#### Parameters

_providerAlias_

A provider alias that matches one of the intrinsic provider aliases, one configured in the application configuration file, or a null reference (**Nothing** in Visual Basic) for the default alias

#### Return Value

A new [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance configured for the given alias

Exceptions

| Exception | Description |
| --- | --- |
| [CommonException](FChoice.Common~FChoice.Common.CommonException.md) | Error Code 5012 No provider with the specified alias is configured |

Remarks

The three intrinsic aliases are the values for the three constants: [DbProviderFactory.MSSQL_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~MSSQL_PROVIDER_NAME.md), [DbProviderFactory.ORACLE_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ORACLE_PROVIDER_NAME.md), and [DbProviderFactory.SYBASE_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~SYBASE_PROVIDER_NAME.md).  To configure additional aliases, please see the guide to [Configure Custom Data Providers](fcflnet_config_dbprovider.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider.md)