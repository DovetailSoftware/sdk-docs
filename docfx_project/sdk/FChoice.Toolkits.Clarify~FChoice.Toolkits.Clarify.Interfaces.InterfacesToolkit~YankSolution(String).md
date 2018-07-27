### YankSolution(String) Method

Solution Identifier.

Yank the Solution from its current location to a new owner's WipBin. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function YankSolution( _
   ByVal _solutionIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult YankSolution( 
   string _solutionIDNum_
)
```

#### Parameters

_solutionIDNum_

Solution Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The WipBin to place the Solution in may also be specified. This is augmented function from base Clarify, where the Solution is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~YankSolution.md)