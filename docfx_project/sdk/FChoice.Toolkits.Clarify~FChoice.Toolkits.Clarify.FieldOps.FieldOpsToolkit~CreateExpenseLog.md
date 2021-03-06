### CreateExpenseLog Method

#### Overload List

| Overload | Description |
| --- | --- |
| [CreateExpenseLog(Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog(Int32).md) |   |
| [CreateExpenseLog(CreateExpenseLogSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog(CreateExpenseLogSetup).md) |   |
| [CreateExpenseLog(CreateExpenseLogSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog(CreateExpenseLogSetup,IDbTransaction).md) | Used to create a new expense log that is related to an onsite log. This overload takes a setup object and a database transaction.   |

#### Remarks

The objid of the onsite log or a case/subcase id must be supplied (but not both). If you do not specify a billing rate, the employee’s labor rate will be used.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)
[CreateExpenseLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogSetup.md)
