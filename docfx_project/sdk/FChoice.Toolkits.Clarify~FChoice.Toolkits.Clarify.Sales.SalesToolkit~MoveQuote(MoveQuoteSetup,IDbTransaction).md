     MoveQuote(MoveQuoteSetup,IDbTransaction) Method                                                   

fcSDK Documentation

MoveQuote(MoveQuoteSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Move the Quote from one WipBin to another WipBin. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function MoveQuote( _
   ByVal _setupParam_ As [MoveQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.MoveQuoteSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) MoveQuote( 
   [MoveQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.MoveQuoteSetup.md) _setupParam_,
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

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the Quote, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~MoveQuote.md)