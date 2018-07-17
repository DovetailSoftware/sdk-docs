     UpdateInventoryBin(Location,String) Method                                                   

fcSDK Documentation

UpdateInventoryBin(Location,String) Method

The inventory location and bin to update

New name of the inventory bin

Used to modify the name or the active flag of an existing bin. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateInventoryBin( _
   ByVal _currentLocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _newBinName_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateInventoryBin( 
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _currentLocation_,
   string _newBinName_
)

#### Parameters

_currentLocation_

The inventory location and bin to update

_newBinName_

New name of the inventory bin

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Bin record.

Remarks

**NOTE**: This API cannot move a bin to another location, only rename it at the existing location.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateInventoryBin.md)