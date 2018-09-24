### CreateAppointment Method

#### Overload List

| Overload | Description |
| --- | --- |
| [CreateAppointment(DateTime,DateTime)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment(DateTime,DateTime).md) |   |
| [CreateAppointment(DateTime,TimeSpan)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment(DateTime,TimeSpan).md) |   |
| [CreateAppointment(TimeSpan,DateTime)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment(TimeSpan,DateTime).md) |   |
| [CreateAppointment(CreateAppointmentSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment(CreateAppointmentSetup).md) |   |
| [CreateAppointment(CreateAppointmentSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment(CreateAppointmentSetup,IDbTransaction).md) | Used to create a new appointment. This overload takes a setup object and a database transaction.   |

#### Remarks

The start/end time can be specified either with both times or with one time and a duration. The duration is specified in seconds.

Each appointment must be specified for a given employee or a piece of equipment (site_part). Both cannot be specified. A case ID number may be optionally specified.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)
[CreateAppointmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup.md)
