### AssignSolution(String) Method

Solution Identifier.

Assign the Solution to a new user. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AssignSolution( _
   ByVal _solutionIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AssignSolution( 
   string _solutionIDNum_
)
```

#### Parameters

_solutionIDNum_

Solution Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Solution must be in the Open condition, and the user assigning the Solution does not have to be the owner of the Solution. In base Clarify, the assigner of a Solution must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Solution in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AssignSolution.md)