### AddServiceInterruption Method

Adds a service interruption (and creates an appointment record). This overload takes a setup object and a database transaction.

Adds a service interruption (and creates an appointment record).

#### Overload List

| Overload | Description |
| --- | --- |
| [AddServiceInterruption(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~AddServiceInterruption(String).md) |   |
| [AddServiceInterruption(AddServiceInterruptionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~AddServiceInterruption(AddServiceInterruptionSetup).md) |   |
| [AddServiceInterruption(AddServiceInterruptionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~AddServiceInterruption(AddServiceInterruptionSetup,IDbTransaction).md) | Adds a service interruption (and creates an appointment record). This overload takes a setup object and a database transaction.   |

#### Remarks

The start/end time can be specified either with both times or with one time and a duration. The duration is specified in seconds.

Each appointment must be specified for a given case or a piece of equipment (site_part), but both cannot be specified. If a case is specified, the case must have a related site_part.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[AddServiceInterruptionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionSetup.md)