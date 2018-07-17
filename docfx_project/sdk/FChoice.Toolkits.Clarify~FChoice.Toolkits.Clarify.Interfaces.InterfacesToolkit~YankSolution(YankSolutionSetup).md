     YankSolution(YankSolutionSetup) Method                                                   

fcSDK Documentation

YankSolution(YankSolutionSetup) Method

Setup object for API invocation.

Yank the Solution from its current location to a new owner's WipBin. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function YankSolution( _
   ByVal _setupParam_ As [YankSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.YankSolutionSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) YankSolution( 
   [YankSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.YankSolutionSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the Solution in may also be specified. This is augmented function from base Clarify, where the Solution is always placed in the default WipBin.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~YankSolution.md)  
[YankSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.YankSolutionSetup.md)