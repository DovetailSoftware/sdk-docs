### CreateAppointment(CreateAppointmentSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create a new appointment. This overload takes a setup object and a database transaction.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateAppointment( _
   ByVal _setupParam_ As CreateAppointmentSetup, _
   ByVal _transaction_ As IDbTransaction _
) As CreateAppointmentResult
```

```csharp
public CreateAppointmentResult CreateAppointment( 
   CreateAppointmentSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A CreateAppointmentResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The start/end time can be specified either with both times or with one time and a duration. The duration is specified in seconds.

Each appointment must be specified for a given employee or a piece of equipment (site_part). Both cannot be specified. A case ID number may be optionally specified.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment.md)