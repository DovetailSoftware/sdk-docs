### CreatePriceInstance Method (InterfacesToolkit)

Creates a Price Instance. This overload takes a set of required parameters for the API.

Creates a Price Instance.

Overload List

| Overload | Description |
| --- | --- |
| [CreatePriceInstance(String,String,String,String,PriceInstanceType,Int32,Decimal)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePriceInstance(String,String,String,String,PriceInstanceType,Int32,Decimal).md) | Creates a Price Instance. This overload takes a set of required parameters for the API.   |
| [CreatePriceInstance(CreatePriceInstanceSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePriceInstance(CreatePriceInstanceSetup).md) | Creates a Price Instance. This overload takes a setup object.   |
| [CreatePriceInstance(CreatePriceInstanceSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePriceInstance(CreatePriceInstanceSetup,IDbTransaction).md) | Creates a Price Instance. This overload takes a setup object and a database transaction.   |

Remarks

You many not have two prices (in the same schedule for the same part and quantity) overlap or have the price's [StartDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~StartDate.md) or [EndDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~EndDate.md) extend outside the span of the price program.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup.md)