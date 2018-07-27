### CreateEcoHeader(CreateEcoHeaderSetup) Method

Setup object for API invocation.

Create an Engineering Change Order (ECO) Header. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateEcoHeader( _
   ByVal _setupParam_ CreateEcoHeaderSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateEcoHeader( 
   CreateEcoHeaderSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoHeader.md)  
[CreateEcoHeaderSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoHeaderSetup.md)