     ForwardCR(ForwardCRSetup) Method                                                   

fcSDK Documentation

ForwardCR(ForwardCRSetup) Method

Setup object for API invocation.

Reject-forward the CR from one queue to another. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ForwardCR( _
   ByVal _setupParam_ As [ForwardCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ForwardCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardCR( 
   [ForwardCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ForwardCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ForwardCR.md)  
[ForwardCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ForwardCRSetup.md)