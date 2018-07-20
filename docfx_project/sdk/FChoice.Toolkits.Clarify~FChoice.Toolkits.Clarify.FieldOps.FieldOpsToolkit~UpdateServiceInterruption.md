### UpdateServiceInterruption Method

Used to modify an existing service interruption (appointment). This overload takes a setup object and a database transaction.

Used to modify an existing service interruption (appointment).

Overload List

| Overload | Description |
| --- | --- |
| [UpdateServiceInterruption(UpdateServiceInterruptionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~UpdateServiceInterruption(UpdateServiceInterruptionSetup).md) |   |
| [UpdateServiceInterruption(UpdateServiceInterruptionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~UpdateServiceInterruption(UpdateServiceInterruptionSetup,IDbTransaction).md) | Used to modify an existing service interruption (appointment). This overload takes a setup object and a database transaction.   |

Remarks

A new description can be specified, or the current description can appended by using  “+” as the first character of the text to add to the original description.

To use the original appointment time, don’t specify the start_time or end_time. To change the start/end time, specify either both times or specify one time and a duration specified in seconds.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[UpdateServiceInterruptionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateServiceInterruptionSetup.md)