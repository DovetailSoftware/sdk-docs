     CreateProvider() Method                                                   

CreateProvider() Method

Creates a new instance of a [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) object from the default configured provider

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function CreateProvider() As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)

public static [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) CreateProvider()

#### Return Value

A new [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance for the configured default alias

Remarks

It is not necessary to create a new instance of the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) every time it is used. Instead, see the [Provider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~Provider.md) property to get a reference to the common instance of the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider.md)