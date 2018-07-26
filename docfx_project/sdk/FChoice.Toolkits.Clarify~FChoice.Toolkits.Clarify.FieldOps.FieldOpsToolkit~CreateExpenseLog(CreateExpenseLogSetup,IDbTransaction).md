### CreateExpenseLog(CreateExpenseLogSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create a new expense log that is related to an onsite log. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateExpenseLog( _
   ByVal _setupParam_ As [CreateExpenseLogSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [CreateExpenseLogResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult.md)

public [CreateExpenseLogResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult.md) CreateExpenseLog( 
   [CreateExpenseLogSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [CreateExpenseLogResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The objid of the onsite log or a case/subcase id must be supplied (but not both). If you do not specify a billing rate, the employee’s labor rate will be used.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog.md)