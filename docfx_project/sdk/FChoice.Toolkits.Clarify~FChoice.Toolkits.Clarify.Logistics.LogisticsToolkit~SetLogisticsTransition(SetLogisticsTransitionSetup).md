     SetLogisticsTransition(SetLogisticsTransitionSetup) Method                                                   

fcSDK Documentation

SetLogisticsTransition(SetLogisticsTransitionSetup) Method

Setup object for API invocation.

Allows you to create or modify Logistics Transitions in the database. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function SetLogisticsTransition( _
   ByVal _setupParam_ As [SetLogisticsTransitionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) SetLogisticsTransition( 
   [SetLogisticsTransitionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

If a transition does not yet exist for the conditions and request type, a new transition is created. Otherwise, the existing transition is modified.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetLogisticsTransition.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup", Caption="SetLogisticsTransitionSetup Class"**