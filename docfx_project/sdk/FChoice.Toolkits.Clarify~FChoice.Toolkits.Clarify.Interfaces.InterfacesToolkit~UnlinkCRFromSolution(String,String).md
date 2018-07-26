### UnlinkCRFromSolution(String,String) Method

Identifier of the CR to unlink from the Solution

Identifier of the Solution to unlink from the CR

Unlink CR from Solution. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function UnlinkCRFromSolution( _
   ByVal _crIDNum_ As String, _
   ByVal _solutionIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UnlinkCRFromSolution( 
   string _crIDNum_,
   string _solutionIDNum_
)
```

#### Parameters

_crIDNum_

Identifier of the CR to unlink from the Solution

_solutionIDNum_

Identifier of the Solution to unlink from the CR

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CR.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UnlinkCRFromSolution.md)