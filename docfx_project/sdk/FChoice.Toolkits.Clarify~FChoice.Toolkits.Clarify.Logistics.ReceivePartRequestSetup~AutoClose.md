### AutoClose Property

Specifies whether the Part Request should be closed if all of the inventory for this Part Request is received (or an overage). If it is already closed, and no other details exist for the header, this parameter specifies whether the Part Request Header should be closed as well.  

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property AutoClose As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool AutoClose {get; set;}
```

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)