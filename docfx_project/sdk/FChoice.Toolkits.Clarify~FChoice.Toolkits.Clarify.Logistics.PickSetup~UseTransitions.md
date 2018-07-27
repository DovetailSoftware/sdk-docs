### UseTransitions Property (PickSetup)

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Pick operation

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

Setting this value to false allows for multiple calls to the API to be performed without extra complex transitions being added to the system.  By default, the value is true.

**NOTE**: The last call to [Pick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup.md)  
[PickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup_members.md)