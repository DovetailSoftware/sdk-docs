### CreateOpportunity(CreateOpportunitySetup) Method

Setup object for API invocation.

Used to create a new Opportunity. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateOpportunity( _
   ByVal _setupParam_ CreateOpportunitySetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateOpportunity( 
   CreateOpportunitySetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The opportunity name must be specified. All other data is optional. The account, contact, territory, stage, source, currency, and process may be specified. Also, an amount and a probability may be specified. The API can generate a time bomb for business rules, or not.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateOpportunity.md)  
[CreateOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateOpportunitySetup.md)