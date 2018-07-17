     RejectPartRequest Method                                                   

fcSDK Documentation

RejectPartRequest Method

Reject the PartRequest from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the PartRequest from the queue in which it currently resides, and return it to the owner.

Overload List

| Overload | Description |
| --- | --- |
| [RejectPartRequest(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~RejectPartRequest(String).md) | Reject the PartRequest from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectPartRequest(RejectPartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~RejectPartRequest(RejectPartRequestSetup).md) | Reject the PartRequest from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectPartRequest(RejectPartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~RejectPartRequest(RejectPartRequestSetup,IDbTransaction).md) | Reject the PartRequest from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

Remarks

The PartRequest must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.RejectPartRequestSetup", Caption="RejectPartRequestSetup Class"**