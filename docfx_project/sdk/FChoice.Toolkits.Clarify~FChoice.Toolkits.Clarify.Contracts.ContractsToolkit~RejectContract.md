     RejectContract Method                                                   

fcSDK Documentation

RejectContract Method

Reject the Contract from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the Contract from the queue in which it currently resides, and return it to the owner.

Overload List

| Overload | Description |
| --- | --- |
| [RejectContract(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectContract(String).md) | Reject the Contract from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectContract(RejectContractSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectContract(RejectContractSetup).md) | Reject the Contract from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectContract(RejectContractSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectContract(RejectContractSetup,IDbTransaction).md) | Reject the Contract from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

Remarks

The Contract must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[RejectContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.RejectContractSetup.md)