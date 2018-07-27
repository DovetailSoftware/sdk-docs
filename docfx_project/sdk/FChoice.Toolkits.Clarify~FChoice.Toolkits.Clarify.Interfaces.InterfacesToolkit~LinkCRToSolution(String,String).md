### LinkCRToSolution(String,String) Method

Identifier of the CR to link to the Solution

Identifier of the Solution to link to the CR

Link a CR to a Solution. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LinkCRToSolution( _
   ByVal _crIDNum_ As String, _
   ByVal _solutionIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult LinkCRToSolution( 
   string _crIDNum_,
   string _solutionIDNum_
)
```

#### Parameters

_crIDNum_

Identifier of the CR to link to the Solution

_solutionIDNum_

Identifier of the Solution to link to the CR

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CR.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~LinkCRToSolution.md)