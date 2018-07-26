### AcceptSolution(String) Method

Solution Identifier.

Accept the specified Solution from the queue in which it is currently dispatched. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptSolution( _
   ByVal _solutionIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptSolution( 
   string _solutionIDNum_
)
```

#### Parameters

_solutionIDNum_

Solution Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Solution must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AcceptSolution.md)