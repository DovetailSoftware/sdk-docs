﻿### CloseOpportunity(CloseOpportunitySetup) Method

Setup object for API invocation.

Closes the Opportunity. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CloseOpportunity( _
   ByVal _setupParam_ CloseOpportunitySetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CloseOpportunity( 
   CloseOpportunitySetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The status may be specified (in closed opportunity condition) for the opportunity, as well as the user name of the closer, and the date/time of the close. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CloseOpportunity.md)  
[CloseOpportunitySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CloseOpportunitySetup.md)