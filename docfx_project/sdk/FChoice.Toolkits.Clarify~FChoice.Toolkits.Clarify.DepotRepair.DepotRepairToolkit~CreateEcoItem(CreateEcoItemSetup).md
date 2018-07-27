### CreateEcoItem(CreateEcoItemSetup) Method

Setup object for API invocation.

Create an Engineering Change Order (ECO) Item. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateEcoItem( _
   ByVal _setupParam_ CreateEcoItemSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateEcoItem( 
   CreateEcoItemSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The objid of the ECO item created is returned in the object property ret_objid.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoItem.md)  
[CreateEcoItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoItemSetup.md)