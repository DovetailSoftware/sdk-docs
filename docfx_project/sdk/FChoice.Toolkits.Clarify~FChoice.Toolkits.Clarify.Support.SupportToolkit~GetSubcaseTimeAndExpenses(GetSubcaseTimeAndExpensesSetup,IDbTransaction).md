### GetSubcaseTimeAndExpenses(GetSubcaseTimeAndExpensesSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Captures all the summed times (such as phone log time, billable and non-billable expense, etc) for a Subcase about to be closed. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function GetSubcaseTimeAndExpenses( _
   ByVal _setupParam_ As [GetSubcaseTimeAndExpensesSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [GetSubcaseTimeAndExpensesResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult.md)

public [GetSubcaseTimeAndExpensesResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult.md) GetSubcaseTimeAndExpenses( 
   [GetSubcaseTimeAndExpensesSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [GetSubcaseTimeAndExpensesResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.GetSubcaseTimeAndExpensesResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

There are a number of bugs with the default Clarify close Case summation on the form. There are not sufficient fields defined in the close_case record for the graphical fields they show. Hence, the data doesn't always make sense. For example, the total phone time captured should be the total of the phone time captured for the Case and for all general subcases. But the GUI form points that field to the total for the phone logs captured for the Case (not showing the Subcase). Hence, this API defines the data as captured from the real data.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~GetSubcaseTimeAndExpenses.md)