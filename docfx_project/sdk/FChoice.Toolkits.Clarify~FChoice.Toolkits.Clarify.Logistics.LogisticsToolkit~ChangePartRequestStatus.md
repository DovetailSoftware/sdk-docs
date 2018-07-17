     ChangePartRequestStatus Method                                                   

fcSDK Documentation

ChangePartRequestStatus Method

Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a set of required parameters for the API.

Causes the specified part request to have a status change from one status to another status – always in the same condition.

Overload List

| Overload | Description |
| --- | --- |
| [ChangePartRequestStatus(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ChangePartRequestStatus(String).md) | Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a set of required parameters for the API.   |
| [ChangePartRequestStatus(ChangePartRequestStatusSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ChangePartRequestStatus(ChangePartRequestStatusSetup).md) | Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a setup object.   |
| [ChangePartRequestStatus(ChangePartRequestStatusSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ChangePartRequestStatus(ChangePartRequestStatusSetup,IDbTransaction).md) | Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a setup object and a database transaction.   |

Remarks

This API only changes a Part Request's status. To change the condition of the part request, use one of the supplied APIs such as [ReceivePartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md) or [Pick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ChangePartRequestStatusSetup", Caption="ChangePartRequestStatusSetup Class"**