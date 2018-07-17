     CreateQuoteLineItem(CreateQuoteLineItemSetup,IDbTransaction) Method                                                   

fcSDK Documentation

CreateQuoteLineItem(CreateQuoteLineItemSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create a Quote/Contract line item. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateQuoteLineItem( _
   ByVal _setupParam_ As [CreateQuoteLineItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateQuoteLineItem( 
   [CreateQuoteLineItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Requires that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

 The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateQuoteLineItem.md)