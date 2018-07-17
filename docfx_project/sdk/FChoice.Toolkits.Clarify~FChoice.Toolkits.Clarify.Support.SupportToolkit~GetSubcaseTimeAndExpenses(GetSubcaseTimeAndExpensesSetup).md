     GetSubcaseTimeAndExpenses(GetSubcaseTimeAndExpensesSetup) Method                                                   

fcSDK Documentation

GetSubcaseTimeAndExpenses(GetSubcaseTimeAndExpensesSetup) Method

Setup object for API invocation.

Captures all the summed times (such as phone log time, billable and non-billable expense, etc) for a Subcase about to be closed. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function GetSubcaseTimeAndExpenses( _
   ByVal _setupParam_ As [GetSubcaseTimeAndExpensesSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesSetup.md) _
) As [GetSubcaseTimeAndExpensesResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult.md)

public [GetSubcaseTimeAndExpensesResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult.md) GetSubcaseTimeAndExpenses( 
   [GetSubcaseTimeAndExpensesSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [GetSubcaseTimeAndExpensesResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult.md) object returned by the API method:

*   [SubcaseTimeAndExpenses](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult~SubcaseTimeAndExpenses.md) \- Contains the sums and totals calculated before closing a Case.

Remarks

There are a number of bugs with the default Clarify close Case summation on the form. There are not sufficient fields defined in the close_case record for the graphical fields they show. Hence, the data doesn't always make sense. For example, the total phone time captured should be the total of the phone time captured for the Case and for all general subcases. But the GUI form points that field to the total for the phone logs captured for the Case (not showing the Subcase). Hence, this API defines the data as captured from the real data.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~GetSubcaseTimeAndExpenses.md)  
[GetSubcaseTimeAndExpensesSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesSetup.md)