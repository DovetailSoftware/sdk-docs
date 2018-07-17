     CreateEcoItem(CreateEcoItemSetup) Method                                                   

fcSDK Documentation

CreateEcoItem(CreateEcoItemSetup) Method

Setup object for API invocation.

Create an Engineering Change Order (ECO) Item. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateEcoItem( _
   ByVal _setupParam_ As [CreateEcoItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoItemSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateEcoItem( 
   [CreateEcoItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoItemSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The objid of the ECO item created is returned in the object property ret_objid.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoItem.md)  
[CreateEcoItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoItemSetup.md)