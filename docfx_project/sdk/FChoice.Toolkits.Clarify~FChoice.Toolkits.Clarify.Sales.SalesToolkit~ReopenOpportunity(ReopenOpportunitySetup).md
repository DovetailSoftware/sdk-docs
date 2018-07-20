### ReopenOpportunity(ReopenOpportunitySetup) Method

Setup object for API invocation.

Causes the specified Opportunity to be reopened. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ReopenOpportunity( _
   ByVal _setupParam_ As [ReopenOpportunitySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ReopenOpportunitySetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReopenOpportunity( 
   [ReopenOpportunitySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ReopenOpportunitySetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The status may be specified (in Open Lead condition) for the Opportunity, as well as the user name of the opener, and the date/time of the reopen. The WIPBIN to place the opportunity in may be specified. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ReopenOpportunity.md)  
[ReopenOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ReopenOpportunitySetup.md)