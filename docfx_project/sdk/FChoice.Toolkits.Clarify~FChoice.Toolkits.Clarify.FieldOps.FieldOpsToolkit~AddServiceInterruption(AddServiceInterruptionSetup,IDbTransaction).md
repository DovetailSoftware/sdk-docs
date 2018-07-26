### AddServiceInterruption(AddServiceInterruptionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Adds a service interruption (and creates an appointment record). This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function AddServiceInterruption( _
   ByVal _setupParam_ As [AddServiceInterruptionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [AddServiceInterruptionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult.md)

public [AddServiceInterruptionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult.md) AddServiceInterruption( 
   [AddServiceInterruptionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [AddServiceInterruptionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The start/end time can be specified either with both times or with one time and a duration. The duration is specified in seconds.

Each appointment must be specified for a given case or a piece of equipment (site_part), but both cannot be specified. If a case is specified, the case must have a related site_part.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~AddServiceInterruption.md)