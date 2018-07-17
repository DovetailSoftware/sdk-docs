     UseTransitions Property (UnpickSetup)                                                   

fcSDK Documentation

UseTransitions Property (UnpickSetup)

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property UseTransitions As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool UseTransitions {get; set;}

Remarks

Setting this value to false allows for multiple calls to the API to be performed without extra complex transitions being added to the system. By default, the value is true.

**NOTE**: The last call to [Unpick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UnpickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup.md)  
[UnpickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup_members.md)