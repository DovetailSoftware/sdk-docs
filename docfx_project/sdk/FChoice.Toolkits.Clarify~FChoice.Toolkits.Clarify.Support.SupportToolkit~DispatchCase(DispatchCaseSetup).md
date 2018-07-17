     DispatchCase(DispatchCaseSetup) Method                                                   

fcSDK Documentation

DispatchCase(DispatchCaseSetup) Method

Setup object for API invocation.

Dispatch the Case to the specified queue. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchCase( _
   ByVal _setupParam_ As [DispatchCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchCase( 
   [DispatchCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~DispatchCase.md)  
[DispatchCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchCaseSetup.md)