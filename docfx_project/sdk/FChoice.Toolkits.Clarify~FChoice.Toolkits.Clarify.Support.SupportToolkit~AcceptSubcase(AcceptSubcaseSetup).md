     AcceptSubcase(AcceptSubcaseSetup) Method                                                   

fcSDK Documentation

AcceptSubcase(AcceptSubcaseSetup) Method

Setup object for API invocation.

Accept the specified Subcase from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AcceptSubcase( _
   ByVal _setupParam_ As [AcceptSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AcceptSubcaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AcceptSubcase( 
   [AcceptSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AcceptSubcaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Subcase must be currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AcceptSubcase.md)  
[AcceptSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AcceptSubcaseSetup.md)