### YankQuote(YankQuoteSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Yank the Quote from its current location to a new owner's WipBin. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function YankQuote( _
   ByVal _setupParam_ As [YankQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.YankQuoteSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) YankQuote( 
   [YankQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.YankQuoteSetup.md) _setupParam_,
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

The WipBin to place the Quote in may also be specified. This is augmented function from base Clarify, where the Quote is always placed in the default WipBin.

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~YankQuote.md)