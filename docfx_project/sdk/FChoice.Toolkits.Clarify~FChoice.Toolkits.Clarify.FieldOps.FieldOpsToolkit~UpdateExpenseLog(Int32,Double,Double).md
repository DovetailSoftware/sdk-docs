### UpdateExpenseLog(Int32,Double,Double) Method

The Objid of the Expense Log being modified.

The number of units that are being applied to the Onsite Log.

The billing rate per unit. If no rate is specified, the labor rate of the performing employee is used.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateExpenseLog( _
   ByVal _expenseLogObjid_ As Integer, _
   ByVal _quantity_ As Double, _
   ByVal _rate_ As Double _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateExpenseLog( 
   int _expenseLogObjid_,
   double _quantity_,
   double _rate_
)
```

#### Parameters

_expenseLogObjid_

The Objid of the Expense Log being modified.

_quantity_

The number of units that are being applied to the Onsite Log.

_rate_

The billing rate per unit. If no rate is specified, the labor rate of the performing employee is used.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~UpdateExpenseLog.md)