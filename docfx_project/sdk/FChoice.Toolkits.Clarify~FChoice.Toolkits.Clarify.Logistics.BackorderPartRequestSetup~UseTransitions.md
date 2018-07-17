     UseTransitions Property (BackorderPartRequestSetup)                                                   

fcSDK Documentation

UseTransitions Property (BackorderPartRequestSetup)

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the backorder operation

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property UseTransitions As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool UseTransitions {get; set;}

Remarks

Setting this value to false allows for multiple calls to the API to be performed without extra complex transitions being added to the system.  By default, the value is true.

**NOTE**: The last call to [FulfillPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[BackorderPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md)  
[BackorderPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup_members.md)