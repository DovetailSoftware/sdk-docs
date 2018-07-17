     CreateSolution(CreateSolutionSetup) Method                                                   

fcSDK Documentation

CreateSolution(CreateSolutionSetup) Method

Setup object for API invocation.

Create a Solution. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateSolution( _
   ByVal _setupParam_ As [CreateSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionSetup.md) _
) As [CreateSolutionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult.md)

public [CreateSolutionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult.md) CreateSolution( 
   [CreateSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [CreateSolutionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult.md) object returned by the API method:

*   [WorkaroundObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult~WorkaroundObjid.md) \- Objid of the Workaround that is created along with the Solution
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult~Objid.md) \- The Objid of the Solution.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult~IDNum.md) \- The IDNum of the Solution.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateSolution.md)  
[CreateSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionSetup.md)