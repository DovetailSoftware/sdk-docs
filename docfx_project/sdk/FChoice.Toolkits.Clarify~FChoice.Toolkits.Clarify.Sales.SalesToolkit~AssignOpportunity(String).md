### AssignOpportunity(String) Method

Opportunity Identifier.

Assign the Opportunity to a new user. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AssignOpportunity( _
   ByVal _opportunityIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AssignOpportunity( 
   string _opportunityIDNum_
)
```

#### Parameters

_opportunityIDNum_

Opportunity Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Opportunity must be in the Open condition, and the user assigning the Opportunity does not have to be the owner of the Opportunity. In base Clarify, the assigner of a Opportunity must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Opportunity in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignOpportunity.md)