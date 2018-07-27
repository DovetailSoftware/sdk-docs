### UseTransitions Property (FulfillPartRequestSetup)

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

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

**NOTE**: The last call to [FulfillPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FulfillPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md)  
[FulfillPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup_members.md)