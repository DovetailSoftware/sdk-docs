### CreatePriceInstance(CreatePriceInstanceSetup) Method

Setup object for API invocation.

Creates a Price Instance. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreatePriceInstance( _
   ByVal _setupParam_ CreatePriceInstanceSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreatePriceInstance( 
   CreatePriceInstanceSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PriceInstance.

Remarks

You many not have two prices (in the same schedule for the same part and quantity) overlap or have the price's [StartDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~StartDate.md) or [EndDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~EndDate.md) extend outside the span of the price program.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePriceInstance.md)  
[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup.md)