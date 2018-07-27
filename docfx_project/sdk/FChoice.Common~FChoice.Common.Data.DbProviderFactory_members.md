### DbProviderFactory Class Members

The following tables list the members exposed by [DbProviderFactory](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md).

#### Public Fields

|   | Name | Description |
| --- | --- | --- |
| ![Public Field](dotnetimages/publicField.png) | [CONFIGURATION_SECTION_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CONFIGURATION_SECTION_NAME.md) | The name of the configuration section that DbProviderFactory expects in the application configuration file   |
| ![Public Field](dotnetimages/publicField.png) | [MSSQL_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~MSSQL_PROVIDER_NAME.md) | The default provider name of MSSQL-based data providers   |
| ![Public Field](dotnetimages/publicField.png) | [ODPNET_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ODPNET_PROVIDER_NAME.md) |   |
| ![Public Field](dotnetimages/publicField.png) | [ORACLE_PROVIDER_NAME](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ORACLE_PROVIDER_NAME.md) | The default provider name of Oracle-based data providers   |



#### Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [Provider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~Provider.md) | Gets a reference to the default configured [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance   |
| ![Public Property](dotnetimages/publicProperty.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [ProviderNames](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ProviderNames.md) | Gets the list of available provider names/alias that can be used for displaying to the user or as an argument for the [CreateProvider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider(String).md) method.   |



#### Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [ConfigureProviders](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ConfigureProviders.md) | Overloaded.    |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [CreateProvider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider.md) | Overloaded. Creates a new instance of a [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) object from the default configured provider   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [IsOracle](FChoice.Common~FChoice.Common.Data.DbProviderFactory~IsOracle.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [IsValidProvider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~IsValidProvider.md) | Gets whether or not the specified alias or name is a valid alias/name for a configured or intrinsic data access provider   |

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)