### CreateProvider() Method

Creates a new instance of a DbProvider object from the default configured provider

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function CreateProvider() As DbProvider
```

```csharp
public static DbProvider CreateProvider()
```

#### Return Value

A new DbProvider instance for the configured default alias

#### Remarks

It is not necessary to create a new instance of the default DbProvider every time it is used. Instead, see the Provider property to get a reference to the common instance of the default DbProvider.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProviderFactory~CreateProvider.md)