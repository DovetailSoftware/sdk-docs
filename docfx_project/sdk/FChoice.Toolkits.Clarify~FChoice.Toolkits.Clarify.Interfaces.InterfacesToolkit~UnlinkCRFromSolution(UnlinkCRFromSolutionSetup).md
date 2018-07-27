### UnlinkCRFromSolution(UnlinkCRFromSolutionSetup) Method

Setup object for API invocation.

Unlink CR from Solution. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UnlinkCRFromSolution( _
   ByVal _setupParam_ UnlinkCRFromSolutionSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UnlinkCRFromSolution( 
   UnlinkCRFromSolutionSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CR.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UnlinkCRFromSolution.md)  
[UnlinkCRFromSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UnlinkCRFromSolutionSetup.md)