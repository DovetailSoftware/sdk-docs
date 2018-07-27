### CreateCountry Method

Creates a Country. This overload takes a set of required parameters for the API.

Creates a Country.

#### Overload List

| Overload | Description |
| --- | --- |
| [CreateCountry(String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCountry(String,Int32).md) | Creates a Country. This overload takes a set of required parameters for the API.   |
| [CreateCountry(CreateCountrySetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCountry(CreateCountrySetup).md) | Creates a Country. This overload takes a setup object.   |
| [CreateCountry(CreateCountrySetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCountry(CreateCountrySetup,IDbTransaction).md) | Creates a Country. This overload takes a setup object and a database transaction.   |

#### Remarks

If no [Currency](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup~Currency.md) value is specified a country will be created without a relation to a Currency. If the Currency speficied does not exist. A Currency will be created using the [Currency properties](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[CreateCountrySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md)