     CreateCountry(CreateCountrySetup) Method                                                   

fcSDK Documentation

CreateCountry(CreateCountrySetup) Method

Setup object for API invocation.

Creates a Country. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateCountry( _
   ByVal _setupParam_ As [CreateCountrySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateCountry( 
   [CreateCountrySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Country.

Remarks

If no [Currency](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup~Currency.md) value is specified a country will be created without a relation to a Currency. If the Currency speficied does not exist. A Currency will be created using the [Currency properties](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCountry.md)  
[CreateCountrySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md)