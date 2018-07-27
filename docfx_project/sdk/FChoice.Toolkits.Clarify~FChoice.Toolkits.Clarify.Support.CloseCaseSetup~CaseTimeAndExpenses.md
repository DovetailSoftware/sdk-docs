### CaseTimeAndExpenses Property (CloseCaseSetup)

Object containing sums information for the case closing.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property CaseTimeAndExpenses As [CaseTimeAndExpenses](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CaseTimeAndExpenses.md)
```

```csharp
[PropertyBitValueAttribute()]
public [CaseTimeAndExpenses](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CaseTimeAndExpenses.md) CaseTimeAndExpenses {get; set;}
```

#### Remarks

If set, this property overrides the calculation of the Case summation.

**PrecloseCase** returns a **CaseSums** object useful for using with this property. If using the CaseSums result from PrecloseCase, any log entries between calling PrecloseCase and [CloseCase](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseCase.md) will not be included in the summation.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CloseCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md)  
[CloseCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup_members.md)