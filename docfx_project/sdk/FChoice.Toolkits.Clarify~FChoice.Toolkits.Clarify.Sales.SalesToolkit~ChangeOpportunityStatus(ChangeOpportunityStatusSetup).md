     ChangeOpportunityStatus(ChangeOpportunityStatusSetup) Method                                                   

fcSDK Documentation

ChangeOpportunityStatus(ChangeOpportunityStatusSetup) Method

Setup object for API invocation.

Cause the specified Opportunity to have its status changed. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ChangeOpportunityStatus( _
   ByVal _setupParam_ As [ChangeOpportunityStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStatusSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeOpportunityStatus( 
   [ChangeOpportunityStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStatusSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The object may be in any valid condition, but the status selected MUST be valid for the current condition. The API can also generate a time bomb (for business rule notification).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeOpportunityStatus.md)  
[ChangeOpportunityStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeOpportunityStatusSetup.md)