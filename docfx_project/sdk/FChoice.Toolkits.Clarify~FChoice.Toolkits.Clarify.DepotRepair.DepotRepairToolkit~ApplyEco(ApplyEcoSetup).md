### ApplyEco(ApplyEcoSetup) Method

Setup object for API invocation.

Apply an ECO to a Part Request Detail. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ApplyEco( _
   ByVal _setupParam_ ApplyEcoSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ApplyEco( 
   ApplyEcoSetup _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~ApplyEco.md)  
[ApplyEcoSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.ApplyEcoSetup.md)