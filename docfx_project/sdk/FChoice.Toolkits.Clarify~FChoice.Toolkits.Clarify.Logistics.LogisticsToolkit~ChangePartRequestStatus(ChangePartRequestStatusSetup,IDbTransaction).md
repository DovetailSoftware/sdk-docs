### ChangePartRequestStatus(ChangePartRequestStatusSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangePartRequestStatus( _
   ByVal _setupParam_ As [ChangePartRequestStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ChangePartRequestStatusSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangePartRequestStatus( 
   [ChangePartRequestStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ChangePartRequestStatusSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

This API only changes a Part Request's status. To change the condition of the part request, use one of the supplied APIs such as [ReceivePartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md) or [Pick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick.md).

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ChangePartRequestStatus.md)