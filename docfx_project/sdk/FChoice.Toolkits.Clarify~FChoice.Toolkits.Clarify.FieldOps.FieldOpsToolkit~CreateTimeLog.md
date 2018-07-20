### CreateTimeLog Method

Used to create a time log that is related to an onsite log. This overload takes a setup object and a database transaction.

Used to create a time log that is related to an onsite log.

Overload List

| Overload | Description |
| --- | --- |
| [CreateTimeLog(Int32,DateTime,TimeSpan)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateTimeLog(Int32,DateTime,TimeSpan).md) |   |
| [CreateTimeLog(CreateTimeLogSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateTimeLog(CreateTimeLogSetup).md) |   |
| [CreateTimeLog(CreateTimeLogSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateTimeLog(CreateTimeLogSetup,IDbTransaction).md) | Used to create a time log that is related to an onsite log. This overload takes a setup object and a database transaction.   |

Remarks

The objid of the onsite log or a case/subcase id must be supplied (but not both). The start time and duration must also be supplied.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[CreateTimeLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateTimeLogSetup.md)