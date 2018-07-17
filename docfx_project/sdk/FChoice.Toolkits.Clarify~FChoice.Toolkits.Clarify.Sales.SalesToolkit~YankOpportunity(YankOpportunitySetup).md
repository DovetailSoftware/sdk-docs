     YankOpportunity(YankOpportunitySetup) Method                                                   

fcSDK Documentation

YankOpportunity(YankOpportunitySetup) Method

Setup object for API invocation.

Yank the Opportunity from its current location to a new owner's WipBin. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function YankOpportunity( _
   ByVal _setupParam_ As [YankOpportunitySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.YankOpportunitySetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) YankOpportunity( 
   [YankOpportunitySetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.YankOpportunitySetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the Opportunity in may also be specified. This is augmented function from base Clarify, where the Opportunity is always placed in the default WipBin.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~YankOpportunity.md)  
[YankOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.YankOpportunitySetup.md)