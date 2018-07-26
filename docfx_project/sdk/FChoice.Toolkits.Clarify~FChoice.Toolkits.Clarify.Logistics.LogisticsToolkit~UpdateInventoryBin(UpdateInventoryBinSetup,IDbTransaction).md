### UpdateInventoryBin(UpdateInventoryBinSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to modify the name or the active flag of an existing bin. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdateInventoryBin( _
   ByVal _setupParam_ As [UpdateInventoryBinSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateInventoryBinSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateInventoryBin( 
   [UpdateInventoryBinSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateInventoryBinSetup.md) _setupParam_,
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

**NOTE**: This API cannot move a bin to another location, only rename it at the existing location.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateInventoryBin.md)