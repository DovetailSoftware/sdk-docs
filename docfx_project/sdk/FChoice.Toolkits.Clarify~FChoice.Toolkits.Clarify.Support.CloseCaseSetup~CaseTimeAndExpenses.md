### CaseTimeAndExpenses Property (CloseCaseSetup)

Object containing sums information for the case closing.

Syntax

```vbnet
' Declaration

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property CaseTimeAndExpenses As [CaseTimeAndExpenses](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CaseTimeAndExpenses.md)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [CaseTimeAndExpenses](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CaseTimeAndExpenses.md) CaseTimeAndExpenses {get; set;}

Remarks

If set, this property overrides the calculation of the Case summation.

[PrecloseCase](/sdk/toolkit_html/fccs/preclose_case.md) returns a [CaseSums](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.PrecloseCaseResult~CaseSums.md) object useful for using with this property. If using the CaseSums result from PrecloseCase, any log entries between calling PrecloseCase and [CloseCase](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseCase.md) will not be included in the summation.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[CloseCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md)  
[CloseCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup_members.md)