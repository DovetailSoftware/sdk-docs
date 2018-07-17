     DispatchSubcase(DispatchSubcaseSetup) Method                                                   

fcSDK Documentation

DispatchSubcase(DispatchSubcaseSetup) Method

Setup object for API invocation.

Dispatch the Subcase to the specified queue. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchSubcase( _
   ByVal _setupParam_ As [DispatchSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchSubcaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchSubcase( 
   [DispatchSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchSubcaseSetup.md) _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~DispatchSubcase.md)  
[DispatchSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchSubcaseSetup.md)