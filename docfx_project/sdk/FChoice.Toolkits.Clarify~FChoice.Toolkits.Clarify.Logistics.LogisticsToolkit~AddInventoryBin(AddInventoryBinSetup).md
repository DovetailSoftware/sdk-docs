### AddInventoryBin(AddInventoryBinSetup) Method

Setup object for API invocation.

Used to add inventory bins to existing locations. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function AddInventoryBin( _
   ByVal _setupParam_ AddInventoryBinSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AddInventoryBin( 
   AddInventoryBinSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Bin record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddInventoryBin.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AddInventoryBinSetup", Caption="AddInventoryBinSetup Class"**