### CreateEcoMaterialDetail(CreateEcoMaterialDetailSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Add a Material Usage Detail to an ECO Header. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateEcoMaterialDetail( _
   ByVal _setupParam_ As [CreateEcoMaterialDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoMaterialDetailSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateEcoMaterialDetail( 
   [CreateEcoMaterialDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoMaterialDetailSetup.md) _setupParam_,
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoMaterialDetail.md)