### ReopenContract Method

Causes the specified contract to be reopened. This overload takes a set of required parameters for the API.

Causes the specified contract to be reopened.

Overload List

| Overload | Description |
| --- | --- |
| [ReopenContract(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ReopenContract(String,String).md) | Causes the specified contract to be reopened. This overload takes a set of required parameters for the API.   |
| [ReopenContract(ReopenContractSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ReopenContract(ReopenContractSetup).md) | Causes the specified contract to be reopened. This overload takes a setup object.   |
| [ReopenContract(ReopenContractSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ReopenContract(ReopenContractSetup,IDbTransaction).md) | Causes the specified contract to be reopened. This overload takes a setup object and a database transaction.   |

Remarks

This is augmented functionality from base Clarify, as a contract cannot be re-opened via the Clarify GUI. The date/time of the reopen, the person performing the reopen, the WIPBIN to place the contract in, and the new status of the contract can be specified. The person who reopens the contract becomes the new owner.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[ReopenContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ReopenContractSetup.md)