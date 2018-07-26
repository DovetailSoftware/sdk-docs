### LinkCRToSolution(LinkCRToSolutionSetup) Method

Setup object for API invocation.

Link a CR to a Solution. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function LinkCRToSolution( _
   ByVal _setupParam_ LinkCRToSolutionSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult LinkCRToSolution( 
   LinkCRToSolutionSetup _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~LinkCRToSolution.md)  
[LinkCRToSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.LinkCRToSolutionSetup.md)