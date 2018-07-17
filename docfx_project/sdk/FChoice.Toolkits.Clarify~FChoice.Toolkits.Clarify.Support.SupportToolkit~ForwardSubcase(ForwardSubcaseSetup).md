     ForwardSubcase(ForwardSubcaseSetup) Method                                                   

fcSDK Documentation

ForwardSubcase(ForwardSubcaseSetup) Method

Setup object for API invocation.

Reject-forward the Subcase from one queue to another. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ForwardSubcase( _
   ByVal _setupParam_ As [ForwardSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardSubcaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardSubcase( 
   [ForwardSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardSubcaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Subcase must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ForwardSubcase.md)  
[ForwardSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardSubcaseSetup.md)