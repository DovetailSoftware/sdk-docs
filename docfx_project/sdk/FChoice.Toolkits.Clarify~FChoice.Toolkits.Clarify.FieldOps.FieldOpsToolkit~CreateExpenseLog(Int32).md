     CreateExpenseLog(Int32) Method                                                   

fcSDK Documentation

CreateExpenseLog(Int32) Method

The Objid of the Onsite Log that this Expense Log is related to.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateExpenseLog( _
   ByVal _onsiteLogObjid_ As [Integer](#) _
) As [CreateExpenseLogResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult.md)

public [CreateExpenseLogResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult.md) CreateExpenseLog( 
   [int](#) _onsiteLogObjid_
)

#### Parameters

_onsiteLogObjid_

The Objid of the Onsite Log that this Expense Log is related to.

#### Return Value

The following values are populated in the [CreateExpenseLogResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult.md) object returned by the API method:

*   [OnsiteLogObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult~OnsiteLogObjid.md) \- The Objid of the OnsiteLog.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult~Objid.md) \- The Objid of the ExpenseLog.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog.md)