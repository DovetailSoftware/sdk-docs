     Provider Property (DbProviderFactory)                                                   

Provider Property (DbProviderFactory)

Gets a reference to the default configured [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Property Provider As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)

public static [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) Provider {get; set;}

#### Property Value

A reference to the default configured [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance

Remarks

While the CreateProvider Method will return a new default provider instance, it creates a new one every time. It is more efficient to use the primary default provider instance. [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) implementations are required to be thread safe, so it is OK to use a single instance in this fashion.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)