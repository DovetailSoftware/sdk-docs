     UpdateExpenseLogSetup Constructor                                                   

fcSDK Documentation

UpdateExpenseLogSetup Constructor

The Objid of the Expense Log being modified.

The number of units that are being applied to the Onsite Log.

The billing rate per unit. If no rate is specified, the labor rate of the performing employee is used.

Initializes a new instance of the UpdateExpenseLogSetup class.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _expenseLogObjid_ As [Integer](#), _
   ByVal _quantity_ As [Double](#), _
   ByVal _rate_ As [Double](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public UpdateExpenseLogSetup( 
   [int](#) _expenseLogObjid_,
   [double](#) _quantity_,
   [double](#) _rate_
)

#### Parameters

_expenseLogObjid_

The Objid of the Expense Log being modified.

_quantity_

The number of units that are being applied to the Onsite Log.

_rate_

The billing rate per unit. If no rate is specified, the labor rate of the performing employee is used.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateExpenseLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateExpenseLogSetup.md)  
[UpdateExpenseLogSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateExpenseLogSetup_members.md)