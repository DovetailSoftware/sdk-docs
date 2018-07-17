     RejectCase(RejectCaseSetup) Method                                                   

fcSDK Documentation

RejectCase(RejectCaseSetup) Method

Setup object for API invocation.

Reject the Case from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function RejectCase( _
   ByVal _setupParam_ As [RejectCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) RejectCase( 
   [RejectCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectCase.md)  
[RejectCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectCaseSetup.md)