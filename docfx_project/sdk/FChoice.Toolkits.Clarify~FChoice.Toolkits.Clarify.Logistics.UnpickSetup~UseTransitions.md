### UseTransitions Property (UnpickSetup)

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

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

**NOTE**: The last call to [Unpick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UnpickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup.md)  
[UnpickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup_members.md)