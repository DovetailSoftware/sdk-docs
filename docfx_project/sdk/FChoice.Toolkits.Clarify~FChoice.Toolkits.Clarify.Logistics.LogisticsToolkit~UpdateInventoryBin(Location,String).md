﻿### UpdateInventoryBin(Location,String) Method

The inventory location and bin to update

New name of the inventory bin

Used to modify the name or the active flag of an existing bin. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateInventoryBin( _
   ByVal _currentLocation_ As Location, _
   ByVal _newBinName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateInventoryBin( 
   Location _currentLocation_,
   string _newBinName_
)
```

#### Parameters

_currentLocation_

The inventory location and bin to update

_newBinName_

New name of the inventory bin

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Bin record.

#### Remarks

**NOTE**: This API cannot move a bin to another location, only rename it at the existing location.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateInventoryBin.md)