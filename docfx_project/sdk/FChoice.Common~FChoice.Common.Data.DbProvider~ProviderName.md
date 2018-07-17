     ProviderName Property (DbProvider)                                                   

ProviderName Property (DbProvider)

A general provider type or key to classify this provider

Syntax

```vbnet
```csharp

'Declaration
 

Public MustOverride ReadOnly Property ProviderName As String

public abstract string ProviderName {get;}

#### Property Value

A general provider type or key to classify this provider

Remarks

This value may be different than the key specified in the application configuration file. For example, the ODP.NET provider for Oracle can use the key "ODPNET", however, its provider name is equivalent to the [DbProviderFactory.ORACLE_PROVIDER_NAME Constant](FChoice.Common~FChoice.Common.Data.DbProviderFactory~ORACLE_PROVIDER_NAME.md) value. This is so that providers can be put into general types or categorizations which makes it easier for application developers to formulate proper SQL statements for that database type.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)