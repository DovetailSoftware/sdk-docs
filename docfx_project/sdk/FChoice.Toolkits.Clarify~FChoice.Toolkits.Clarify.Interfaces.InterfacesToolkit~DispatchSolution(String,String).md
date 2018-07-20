### DispatchSolution(String,String) Method

Solution Identifier.

The queue into which the Solution is to be dispatched.

Dispatch the Solution to the specified queue. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function DispatchSolution( _
   ByVal _solutionIDNum_ As String, _
   ByVal _queue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchSolution( 
   string _solutionIDNum_,
   string _queue_
)

#### Parameters

_solutionIDNum_

Solution Identifier.

_queue_

The queue into which the Solution is to be dispatched.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Solution must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~DispatchSolution.md)