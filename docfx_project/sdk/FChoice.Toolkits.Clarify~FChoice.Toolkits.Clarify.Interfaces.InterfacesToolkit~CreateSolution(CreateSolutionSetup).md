### CreateSolution(CreateSolutionSetup) Method

Setup object for API invocation.

Create a Solution. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateSolution( _
   ByVal _setupParam_ As CreateSolutionSetup _
) As CreateSolutionResult
```

```csharp
public CreateSolutionResult CreateSolution( 
   CreateSolutionSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the CreateSolutionResult object returned by the API method:

*   WorkaroundObjid \- Objid of the Workaround that is created along with the Solution
*   Objid \- The Objid of the Solution.
*   IDNum \- The IDNum of the Solution.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateSolution.md)  
[CreateSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionSetup.md)