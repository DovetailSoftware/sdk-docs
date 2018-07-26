### UpdateExpenseLogSetup Constructor

The Objid of the Expense Log being modified.

The number of units that are being applied to the Onsite Log.

The billing rate per unit. If no rate is specified, the labor rate of the performing employee is used.

Initializes a new instance of the UpdateExpenseLogSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _expenseLogObjid_ As Integer, _
   ByVal _quantity_ As Double, _
   ByVal _rate_ As Double _
)
```

```csharp
[ConstructorIndexAttribute()]
public UpdateExpenseLogSetup( 
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

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateExpenseLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateExpenseLogSetup.md)  
[UpdateExpenseLogSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateExpenseLogSetup_members.md)