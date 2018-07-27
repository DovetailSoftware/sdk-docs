### IsValidProvider Method

The provider name or alias to verify

Gets whether or not the specified alias or name is a valid alias/name for a configured or intrinsic data access provider

#### Syntax

```vbnet
'Declaration

Public Function IsValidProvider( _
   ByVal _providerName_ As String _
) As Boolean
```

```csharp
public bool IsValidProvider( 
   string _providerName_
)
```

#### Parameters

_providerName_

The provider name or alias to verify

#### Return Value

Whether or not the specified alias or name is a valid alias/name for a configured or intrinsic data access provider

#### Exceptions

| Exception | Description |
| --- | --- |
| [ArgumentNullException](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemargumentnullexceptionclasstopic.htm) | _key_ is a null reference (**Nothing** in Visual Basic) |

#### Remarks

For more information on specifying custom data providers, see the guide on [Configuring Custom Data Providers](/articles/configuring-database-providers.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProviderFactory Class](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md)  
[DbProviderFactory Members](FChoice.Common~FChoice.Common.Data.DbProviderFactory_members.md)