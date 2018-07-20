### CreateCountry(String,Int32) Method

Name of the Country being created

Telephone country code for the Country

Creates a Country. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function CreateCountry( _
   ByVal _country_ As String, _
   ByVal _countryCode_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateCountry( 
   string _country_,
   int _countryCode_
)
```

#### Parameters

_country_

Name of the Country being created

_countryCode_

Telephone country code for the Country

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Country.

Remarks

If no [Currency](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup~Currency.md) value is specified a country will be created without a relation to a Currency. If the Currency speficied does not exist. A Currency will be created using the [Currency properties](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCountry.md)