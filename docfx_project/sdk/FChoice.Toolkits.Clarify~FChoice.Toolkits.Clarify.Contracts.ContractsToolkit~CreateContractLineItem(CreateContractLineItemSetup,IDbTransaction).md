### CreateContractLineItem(CreateContractLineItemSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create quote/contract line items. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateContractLineItem( _
   ByVal _setupParam_ As [CreateContractLineItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateContractLineItem( 
   [CreateContractLineItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The API requires that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

 The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.  

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem.md)