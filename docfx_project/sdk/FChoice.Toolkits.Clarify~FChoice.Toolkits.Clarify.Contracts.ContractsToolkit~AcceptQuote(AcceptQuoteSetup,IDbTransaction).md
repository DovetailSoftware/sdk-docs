     AcceptQuote(AcceptQuoteSetup,IDbTransaction) Method                                                   

fcSDK Documentation

AcceptQuote(AcceptQuoteSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Accept the specified Quote from the queue in which it is currently dispatched. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AcceptQuote( _
   ByVal _setupParam_ As [AcceptQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AcceptQuoteSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AcceptQuote( 
   [AcceptQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AcceptQuoteSetup.md) _setupParam_,
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

The Quote must be currently dispatched to a queue.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AcceptQuote.md)