### CreateContractLineItem Method

#### Overload List

| Overload | Description |
| --- | --- |
| [CreateContractLineItem(String,String,String,String,Int32,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem(String,String,String,String,Int32,String,Int32).md) | Used to create quote/contract line items. This overload takes a set of required parameters for the API.   |
| [CreateContractLineItem(String,String,String,String,String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem(String,String,String,String,String,String,Int32).md) | Used to create quote/contract line items. This overload takes a set of required parameters for the API.   |
| [CreateContractLineItem(CreateContractLineItemSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem(CreateContractLineItemSetup).md) | Used to create quote/contract line items. This overload takes a setup object.   |
| [CreateContractLineItem(CreateContractLineItemSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem(CreateContractLineItemSetup,IDbTransaction).md) | Used to create quote/contract line items. This overload takes a setup object and a database transaction.   |

#### Remarks

The API requires that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

 The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)
[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)
