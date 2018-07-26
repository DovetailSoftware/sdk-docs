### DispatchSolution(DispatchSolutionSetup) Method

Setup object for API invocation.

Dispatch the Solution to the specified queue. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function DispatchSolution( _
   ByVal _setupParam_ DispatchSolutionSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchSolution( 
   DispatchSolutionSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Solution must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~DispatchSolution.md)  
[DispatchSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.DispatchSolutionSetup.md)