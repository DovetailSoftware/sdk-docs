     DispatchQuote(DispatchQuoteSetup,IDbTransaction) Method                                                   

fcSDK Documentation

DispatchQuote(DispatchQuoteSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Dispatch the Quote to the specified queue. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchQuote( _
   ByVal _setupParam_ As [DispatchQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchQuoteSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchQuote( 
   [DispatchQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchQuoteSetup.md) _setupParam_,
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

The Quote must be in open condition, and not currently dispatched to a queue.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchQuote.md)