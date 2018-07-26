### CreateOnsiteLog(CreateOnsiteLogSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create an onsite log that is related to a case or subcase. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateOnsiteLog( _
   ByVal _setupParam_ As [CreateOnsiteLogSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateOnsiteLogSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateOnsiteLog( 
   [CreateOnsiteLogSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateOnsiteLogSetup.md) _setupParam_,
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

The object type and id of the focus object  (the case or subcase) must be supplied.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateOnsiteLog.md)