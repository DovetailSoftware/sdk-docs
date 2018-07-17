     UpdateServiceInterruption(UpdateServiceInterruptionSetup,IDbTransaction) Method                                                   

fcSDK Documentation

UpdateServiceInterruption(UpdateServiceInterruptionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to modify an existing service interruption (appointment). This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateServiceInterruption( _
   ByVal _setupParam_ As [UpdateServiceInterruptionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateServiceInterruptionSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateServiceInterruption( 
   [UpdateServiceInterruptionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateServiceInterruptionSetup.md) _setupParam_,
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

A new description can be specified, or the current description can appended by using  “+” as the first character of the text to add to the original description.

To use the original appointment time, don’t specify the start_time or end_time. To change the start/end time, specify either both times or specify one time and a duration specified in seconds.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~UpdateServiceInterruption.md)