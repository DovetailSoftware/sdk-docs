### CreateOpportunity(String,String,Single) Method

The name of the Opportunity.

Sales stage for the opportunity.

Probability of opportunity close.

Used to create a new Opportunity. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateOpportunity( _
   ByVal _opportunityName_ As String, _
   ByVal _salesStage_ As String, _
   ByVal _probability_ As [Single](#) _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateOpportunity( 
   string _opportunityName_,
   string _salesStage_,
   [float](#) _probability_
)
```

#### Parameters

_opportunityName_

The name of the Opportunity.

_salesStage_

Sales stage for the opportunity.

_probability_

Probability of opportunity close.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The opportunity name must be specified. All other data is optional. The account, contact, territory, stage, source, currency, and process may be specified. Also, an amount and a probability may be specified. The API can generate a time bomb for business rules, or not.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateOpportunity.md)