### DeleteDepotRepairLabor(DeleteDepotRepairLaborSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Delete a Depot Repair Part. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function DeleteDepotRepairLabor( _
   ByVal _setupParam_ As [DeleteDepotRepairLaborSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DeleteDepotRepairLaborSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DeleteDepotRepairLabor( 
   [DeleteDepotRepairLaborSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DeleteDepotRepairLaborSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~DeleteDepotRepairLabor.md)