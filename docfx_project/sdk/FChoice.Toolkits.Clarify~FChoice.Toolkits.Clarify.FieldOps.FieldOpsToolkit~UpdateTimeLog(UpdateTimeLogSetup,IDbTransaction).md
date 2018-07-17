     UpdateTimeLog(UpdateTimeLogSetup,IDbTransaction) Method                                                   

fcSDK Documentation

UpdateTimeLog(UpdateTimeLogSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to modify an existing time log. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateTimeLog( _
   ByVal _setupParam_ As [UpdateTimeLogSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateTimeLogSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateTimeLog( 
   [UpdateTimeLogSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateTimeLogSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~UpdateTimeLog.md)