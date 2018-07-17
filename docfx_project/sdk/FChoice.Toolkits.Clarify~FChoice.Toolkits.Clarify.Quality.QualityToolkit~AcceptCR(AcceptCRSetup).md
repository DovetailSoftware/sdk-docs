     AcceptCR(AcceptCRSetup) Method                                                   

fcSDK Documentation

AcceptCR(AcceptCRSetup) Method

Setup object for API invocation.

Accept the specified CR from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AcceptCR( _
   ByVal _setupParam_ As [AcceptCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AcceptCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AcceptCR( 
   [AcceptCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AcceptCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AcceptCR.md)  
[AcceptCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AcceptCRSetup.md)