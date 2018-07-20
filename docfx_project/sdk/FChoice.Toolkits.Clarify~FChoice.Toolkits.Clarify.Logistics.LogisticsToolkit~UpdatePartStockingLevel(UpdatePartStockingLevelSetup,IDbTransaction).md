### UpdatePartStockingLevel(UpdatePartStockingLevelSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Updates an existing part restocking authorization level. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdatePartStockingLevel( _
   ByVal _setupParam_ As [UpdatePartStockingLevelSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartStockingLevelSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdatePartStockingLevel( 
   [UpdatePartStockingLevelSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartStockingLevelSetup.md) _setupParam_,
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

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdatePartStockingLevel.md)