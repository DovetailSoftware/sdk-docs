### UseTransitions Property (ReceivePartRequestSetup)

Specifies whether or not to change the Part Request condition

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property UseTransitions As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool UseTransitions {get; set;}
```

#### Remarks

Setting this value to false allows for multiple calls to the API to be performed without extra complex transitions being added to the system. By default, the value is true.

**NOTE**: The last call to [ReceivePartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)