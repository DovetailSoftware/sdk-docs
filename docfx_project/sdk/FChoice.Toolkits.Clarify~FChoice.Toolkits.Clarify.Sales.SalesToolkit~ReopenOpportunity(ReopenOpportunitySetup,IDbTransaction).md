     ReopenOpportunity(ReopenOpportunitySetup,IDbTransaction) Method                                                   

fcSDK Documentation

ReopenOpportunity(ReopenOpportunitySetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Causes the specified Opportunity to be reopened. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ReopenOpportunity( _
   ByVal _setupParam_ As [ReopenOpportunitySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ReopenOpportunitySetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReopenOpportunity( 
   [ReopenOpportunitySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ReopenOpportunitySetup.md) _setupParam_,
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

The status may be specified (in Open Lead condition) for the Opportunity, as well as the user name of the opener, and the date/time of the reopen. The WIPBIN to place the opportunity in may be specified. The API can also generate a time bomb (for business rule notification).

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ReopenOpportunity.md)