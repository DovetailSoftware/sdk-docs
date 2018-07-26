### ForwardSolution(String,String) Method

Solution Identifier.

The new queue into which the Solution is to be forwarded.

Reject-forward the Solution from one queue to another. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function ForwardSolution( _
   ByVal _solutionIDNum_ As String, _
   ByVal _newQueue_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ForwardSolution( 
   string _solutionIDNum_,
   string _newQueue_
)
```

#### Parameters

_solutionIDNum_

Solution Identifier.

_newQueue_

The new queue into which the Solution is to be forwarded.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Solution must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~ForwardSolution.md)