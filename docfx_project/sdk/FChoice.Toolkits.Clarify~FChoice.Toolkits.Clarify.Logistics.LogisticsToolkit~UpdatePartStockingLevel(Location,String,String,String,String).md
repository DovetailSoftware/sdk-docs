### UpdatePartStockingLevel(Location,String,String,String,String) Method

The location and bin used for restocking

The queue to which the reorder part request will be dispatched

Part number for the Part

Part revision for the Part

Part domain for the Part

Updates an existing part restocking authorization level. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdatePartStockingLevel( _
   ByVal _currentLocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _queue_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdatePartStockingLevel( 
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _currentLocation_,
   string _queue_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_
)

#### Parameters

_currentLocation_

The location and bin used for restocking

_queue_

The queue to which the reorder part request will be dispatched

_partNumber_

Part number for the Part

_partRevision_

Part revision for the Part

_partDomain_

Part domain for the Part

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Part Authorization record.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdatePartStockingLevel.md)