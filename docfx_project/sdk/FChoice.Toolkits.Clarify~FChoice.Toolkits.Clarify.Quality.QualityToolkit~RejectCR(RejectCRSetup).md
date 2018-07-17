     RejectCR(RejectCRSetup) Method                                                   

fcSDK Documentation

RejectCR(RejectCRSetup) Method

Setup object for API invocation.

Reject the CR from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function RejectCR( _
   ByVal _setupParam_ As [RejectCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.RejectCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) RejectCR( 
   [RejectCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.RejectCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~RejectCR.md)  
[RejectCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.RejectCRSetup.md)