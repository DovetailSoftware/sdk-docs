### YankPartRequest Method

Yank the PartRequest from its current location to a new owner's WipBin. This overload takes a set of required parameters for the API.

Yank the PartRequest from its current location to a new owner's WipBin.

#### Overload List

| Overload | Description |
| --- | --- |
| [YankPartRequest(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~YankPartRequest(String).md) | Yank the PartRequest from its current location to a new owner's WipBin. This overload takes a set of required parameters for the API.   |
| [YankPartRequest(YankPartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~YankPartRequest(YankPartRequestSetup).md) | Yank the PartRequest from its current location to a new owner's WipBin. This overload takes a setup object.   |
| [YankPartRequest(YankPartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~YankPartRequest(YankPartRequestSetup,IDbTransaction).md) | Yank the PartRequest from its current location to a new owner's WipBin. This overload takes a setup object and a database transaction.   |

#### Remarks

The WipBin to place the PartRequest in may also be specified. This is augmented function from base Clarify, where the PartRequest is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.YankPartRequestSetup", Caption="YankPartRequestSetup Class"**