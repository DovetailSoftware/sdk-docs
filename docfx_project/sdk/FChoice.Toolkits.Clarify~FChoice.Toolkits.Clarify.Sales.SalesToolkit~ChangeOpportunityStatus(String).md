### ChangeOpportunityStatus(String) Method

Opportunity Identifier.

Cause the specified Opportunity to have its status changed. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangeOpportunityStatus( _
   ByVal _opportunityIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeOpportunityStatus( 
   string _opportunityIDNum_
)

#### Parameters

_opportunityIDNum_

Opportunity Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The object may be in any valid condition, but the status selected MUST be valid for the current condition. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeOpportunityStatus.md)