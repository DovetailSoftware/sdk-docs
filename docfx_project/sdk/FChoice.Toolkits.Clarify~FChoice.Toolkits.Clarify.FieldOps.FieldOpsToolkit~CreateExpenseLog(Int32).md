### CreateExpenseLog(Int32) Method

The Objid of the Onsite Log that this Expense Log is related to.

Syntax

```vbnet
'Declaration
 
Public Overloads Function CreateExpenseLog( _
   ByVal _onsiteLogObjid_ As Integer _
) As CreateExpenseLogResult
```

```csharp
public CreateExpenseLogResult CreateExpenseLog( 
   int _onsiteLogObjid_
)
```

#### Parameters

_onsiteLogObjid_

The Objid of the Onsite Log that this Expense Log is related to.

#### Return Value

The following values are populated in the CreateExpenseLogResult object returned by the API method:

*   [OnsiteLogObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult~OnsiteLogObjid.md) \- The Objid of the OnsiteLog.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogResult~OnsiteLogObjid.md) \- The Objid of the ExpenseLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog.md)