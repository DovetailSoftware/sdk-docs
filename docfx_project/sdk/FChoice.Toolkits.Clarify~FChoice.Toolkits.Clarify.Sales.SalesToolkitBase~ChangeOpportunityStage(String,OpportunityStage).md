     ChangeOpportunityStage(String,OpportunityStage) Method                                                   

fcSDK Documentation

ChangeOpportunityStage(String,OpportunityStage) Method

Opportunity Identifier.

The new sales stage for the Opportunity.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ChangeOpportunityStage( _
   ByVal _opportunityIDNum_ As String, _
   ByVal _stage_ As [OpportunityStage](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.OpportunityStage.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeOpportunityStage( 
   string _opportunityIDNum_,
   [OpportunityStage](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.OpportunityStage.md) _stage_
)

#### Parameters

_opportunityIDNum_

Opportunity Identifier.

_stage_

The new sales stage for the Opportunity.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkitBase Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkitBase.md)  
[SalesToolkitBase Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkitBase_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkitBase~ChangeOpportunityStage.md)