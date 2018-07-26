### AcceptSolution(AcceptSolutionSetup) Method

Setup object for API invocation.

Accept the specified Solution from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptSolution( _
   ByVal _setupParam_ AcceptSolutionSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptSolution( 
   AcceptSolutionSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Solution must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AcceptSolution.md)  
[AcceptSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AcceptSolutionSetup.md)