### CreateCountry(CreateCountrySetup) Method

Setup object for API invocation.

Creates a Country. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateCountry( _
   ByVal _setupParam_ CreateCountrySetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateCountry( 
   CreateCountrySetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Country.

Remarks

If no [Currency](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup~Currency.md) value is specified a country will be created without a relation to a Currency. If the Currency speficied does not exist. A Currency will be created using the [Currency properties](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCountry.md)  
[CreateCountrySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md)